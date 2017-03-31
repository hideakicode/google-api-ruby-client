# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'google/apis/core/api_command'
require 'google/apis/errors'
require 'addressable/uri'

module Google
  module Apis
    module Core
      # Streaming/resumable media download support
      class DownloadCommand < ApiCommand
        RANGE_HEADER = 'Range'
        OK_STATUS = [200, 201, 206]

        # File or IO to write content to
        # @return [String, File, #write]
        attr_accessor :download_dest

        # Ensure the download destination is a writable stream.
        #
        # @return [void]
        def prepare!
          @state = :start
          @download_url = nil
          @offset = 0
          if download_dest.respond_to?(:write)
            @download_io = download_dest
            @close_io_on_finish = false
          elsif download_dest.is_a?(String)
            @download_io = File.open(download_dest, 'wb')
            @close_io_on_finish = true
          else
            @download_io = StringIO.new('', 'wb')
            @close_io_on_finish = false
          end
          super
        end

        # Close IO stream when command done. Only closes the stream if it was opened by the command.
        def release!
          @download_io.close if @close_io_on_finish
        end

        # Execute the upload request once. Overrides the default implementation to handle streaming/chunking
        # of file content.
        #
        # @private
        # @param [HTTPClient] client
        #   HTTP client
        # @yield [result, err] Result or error if block supplied
        # @return [Object]
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def execute_once(client, &block)
          request_header = header.dup
          apply_request_options(request_header)

          check_if_rewind_needed = false
          if @offset > 0
            logger.debug { sprintf('Resuming download from offset %d', @offset) }
            request_header[RANGE_HEADER] = sprintf('bytes=%d-', @offset)
            check_if_rewind_needed = true
          end

          http_res = client.get(url.to_s,
                     query: query,
                     header: request_header,
                     follow_redirect: true) do |res, chunk|
            status = res.http_header.status_code.to_i
            if OK_STATUS.include?(status)
              if check_if_rewind_needed && status != 206
                # Oh no! Requested a chunk, but received the entire content
                # Attempt to rewind the stream
                @download_io.rewind
                check_if_rewind_needed = false
              end
              logger.debug { sprintf('Writing chunk (%d bytes)', chunk.length) }
              @offset += chunk.length
              @download_io.write(chunk)
              @download_io.flush
            end
          end

          if @close_io_on_finish
            result = nil
          else
            result = @download_io
          end
          check_status(http_res.status.to_i, http_res.header, http_res.body)
          success(result, &block)
        rescue => e
          error(e, rethrow: true, &block)
        end
      end
    end
  end
end
