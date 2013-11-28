# Copyright 2013 Google Inc.
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

require 'json'

module Google
  class APIClient
    ##
    # Represents cached OAuth 2 tokens stored on local disk in a
    # JSON serialized file. Meant to resemble the serialized format
    # http://google-api-python-client.googlecode.com/hg/docs/epy/oauth2client.file.Storage-class.html
    #
    class FileStore

      attr_accessor :path

      ##
      # Initializes the FileStorage object.
      #
      # @param [String] path
      #    Path to the credentials file.
      def initialize(path)
        @path= path
      end

      ##
      # Attempt to read in credentials from the specified file.
      def load_credentials
        if File.exists?(path) && File.readable?(path) && File.writable?(path)
          credentials = File.open(path, 'r') { |f| JSON.parse(f.read) }
        end
        credentials
      end

      ##
      # Write the credentials to the specified file.
      #
      # @param [Signet::OAuth2::Client] authorization
      #    Optional authorization instance. If not provided, the authorization
      #    already associated with this instance will be written.
      def write_credentials(credentials_hash)
        File.open(self.path, 'w') do |file|
          file.write(credentials_hash.to_json)
        end
      end
    end
  end
end
