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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module DialogflowV2beta1
      # Dialogflow API
      #
      # Builds conversational interfaces (for example, chatbots, and voice-powered
      #  apps and devices).
      #
      # @example
      #    require 'google/apis/dialogflow_v2beta1'
      #
      #    Dialogflow = Google::Apis::DialogflowV2beta1 # Alias the module
      #    service = Dialogflow::DialogflowService.new
      #
      # @see https://cloud.google.com/dialogflow/
      class DialogflowService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://dialogflow.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Creates/updates the specified agent.
        # @param [String] parent
        #   Required. The project of this agent.
        #   Format: `projects/<Project ID>`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent] google_cloud_dialogflow_v2beta1_agent_object
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def agent_project(parent, google_cloud_dialogflow_v2beta1_agent_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/agent', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_agent_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent
          command.params['parent'] = parent unless parent.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified agent.
        # @param [String] parent
        #   Required. The project that the agent to delete is associated with.
        #   Format: `projects/<Project ID>`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+parent}/agent', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified agent.
        # @param [String] parent
        #   Required. The project that the agent to fetch is associated with.
        #   Format: `projects/<Project ID>`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/agent', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports the specified agent to a ZIP file.
        # Operation <response: ExportAgentResponse>
        # @param [String] parent
        #   Required. The project that the agent to export is associated with.
        #   Format: `projects/<Project ID>`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ExportAgentRequest] google_cloud_dialogflow_v2beta1_export_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_agent(parent, google_cloud_dialogflow_v2beta1_export_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/agent:export', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ExportAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_export_agent_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports the specified agent from a ZIP file.
        # Uploads new intents and entity types without deleting the existing ones.
        # Intents and entity types with the same name are replaced with the new
        # versions from ImportAgentRequest.
        # Operation <response: google.protobuf.Empty>
        # @param [String] parent
        #   Required. The project that the agent to import is associated with.
        #   Format: `projects/<Project ID>`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ImportAgentRequest] google_cloud_dialogflow_v2beta1_import_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_agent(parent, google_cloud_dialogflow_v2beta1_import_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/agent:import', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ImportAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_import_agent_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restores the specified agent from a ZIP file.
        # Replaces the current agent version with a new one. All the intents and
        # entity types in the older version are deleted.
        # Operation <response: google.protobuf.Empty>
        # @param [String] parent
        #   Required. The project that the agent to restore is associated with.
        #   Format: `projects/<Project ID>`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1RestoreAgentRequest] google_cloud_dialogflow_v2beta1_restore_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_agent(parent, google_cloud_dialogflow_v2beta1_restore_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/agent:restore', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1RestoreAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_restore_agent_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of agents.
        # Since there is at most one conversational agent per project, this method is
        # useful primarily for listing all agents across projects the caller has
        # access to. One can achieve that with a wildcard project collection id "-".
        # Refer to [List
        # Sub-Collections](https://cloud.google.com/apis/design/design_patterns#list_sub-
        # collections).
        # @param [String] parent
        #   Required. The project to list agents from.
        #   Format: `projects/<Project ID or '-'>`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By
        #   default 100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchAgentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchAgentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_agents(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/agent:search', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchAgentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchAgentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Trains the specified agent.
        # Operation <response: google.protobuf.Empty>
        # @param [String] parent
        #   Required. The project that the agent to train is associated with.
        #   Format: `projects/<Project ID>`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1TrainAgentRequest] google_cloud_dialogflow_v2beta1_train_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def train_agent(parent, google_cloud_dialogflow_v2beta1_train_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/agent:train', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1TrainAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_train_agent_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes entity types in the specified agent.
        # Operation <response: google.protobuf.Empty>
        # @param [String] parent
        #   Required. The name of the agent to delete all entities types for. Format:
        #   `projects/<Project ID>/agent`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest] google_cloud_dialogflow_v2beta1_batch_delete_entity_types_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete_entity_types(parent, google_cloud_dialogflow_v2beta1_batch_delete_entity_types_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entityTypes:batchDelete', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_delete_entity_types_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates/Creates multiple entity types in the specified agent.
        # Operation <response: BatchUpdateEntityTypesResponse>
        # @param [String] parent
        #   Required. The name of the agent to update or create entity types in.
        #   Format: `projects/<Project ID>/agent`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest] google_cloud_dialogflow_v2beta1_batch_update_entity_types_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_update_entity_types(parent, google_cloud_dialogflow_v2beta1_batch_update_entity_types_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entityTypes:batchUpdate', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_update_entity_types_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an entity type in the specified agent.
        # @param [String] parent
        #   Required. The agent to create a entity type for.
        #   Format: `projects/<Project ID>/agent`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType] google_cloud_dialogflow_v2beta1_entity_type_object
        # @param [String] language_code
        #   Optional. The language of entity synonyms defined in `entity_type`. If not
        #   specified, the agent's default language is used.
        #   [Many
        #   languages](https://cloud.google.com/dialogflow/docs/reference/language)
        #   are supported. Note: languages must be enabled in the agent before they can
        #   be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_entity_type(parent, google_cloud_dialogflow_v2beta1_entity_type_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified entity type.
        # @param [String] name
        #   Required. The name of the entity type to delete.
        #   Format: `projects/<Project ID>/agent/entityTypes/<EntityType ID>`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified entity type.
        # @param [String] name
        #   Required. The name of the entity type.
        #   Format: `projects/<Project ID>/agent/entityTypes/<EntityType ID>`.
        # @param [String] language_code
        #   Optional. The language to retrieve entity synonyms for. If not specified,
        #   the agent's default language is used.
        #   [Many
        #   languages](https://cloud.google.com/dialogflow/docs/reference/language)
        #   are supported. Note: languages must be enabled in the agent before they can
        #   be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_entity_type(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all entity types in the specified agent.
        # @param [String] parent
        #   Required. The agent to list all entity types from.
        #   Format: `projects/<Project ID>/agent`.
        # @param [String] language_code
        #   Optional. The language to list entity synonyms for. If not specified,
        #   the agent's default language is used.
        #   [Many
        #   languages](https://cloud.google.com/dialogflow/docs/reference/language)
        #   are supported. Note: languages must be enabled in the agent before they can
        #   be used.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By
        #   default 100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_entity_types(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListEntityTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified entity type.
        # @param [String] name
        #   The unique identifier of the entity type.
        #   Required for EntityTypes.UpdateEntityType and
        #   EntityTypes.BatchUpdateEntityTypes methods.
        #   Format: `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType] google_cloud_dialogflow_v2beta1_entity_type_object
        # @param [String] language_code
        #   Optional. The language of entity synonyms defined in `entity_type`. If not
        #   specified, the agent's default language is used.
        #   [Many
        #   languages](https://cloud.google.com/dialogflow/docs/reference/language)
        #   are supported. Note: languages must be enabled in the agent before they can
        #   be used.
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_entity_type(name, google_cloud_dialogflow_v2beta1_entity_type_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates multiple new entities in the specified entity type.
        # Operation <response: google.protobuf.Empty>
        # @param [String] parent
        #   Required. The name of the entity type to create entities in. Format:
        #   `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest] google_cloud_dialogflow_v2beta1_batch_create_entities_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_entity_create_entities(parent, google_cloud_dialogflow_v2beta1_batch_create_entities_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entities:batchCreate', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_create_entities_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes entities in the specified entity type.
        # Operation <response: google.protobuf.Empty>
        # @param [String] parent
        #   Required. The name of the entity type to delete entries for. Format:
        #   `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest] google_cloud_dialogflow_v2beta1_batch_delete_entities_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_entity_delete_entities(parent, google_cloud_dialogflow_v2beta1_batch_delete_entities_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entities:batchDelete', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_delete_entities_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates or creates multiple entities in the specified entity type. This
        # method does not affect entities in the entity type that aren't explicitly
        # specified in the request.
        # Operation <response: google.protobuf.Empty>
        # @param [String] parent
        #   Required. The name of the entity type to update or create entities in.
        #   Format: `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest] google_cloud_dialogflow_v2beta1_batch_update_entities_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_entity_update_entities(parent, google_cloud_dialogflow_v2beta1_batch_update_entities_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entities:batchUpdate', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_update_entities_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes all active contexts in the specified session.
        # @param [String] parent
        #   Required. The name of the session to delete all contexts from. Format:
        #   `projects/<Project ID>/agent/sessions/<Session ID>` or `projects/<Project
        #   ID>/agent/environments/<Environment ID>/users/<User ID>/sessions/<Session
        #   ID>`. If `Environment ID` is not specified we assume default 'draft'
        #   environment. If `User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_environment_user_session_contexts(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+parent}/contexts', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Processes a natural language query and returns structured, actionable data
        # as a result. This method is not idempotent, because it may cause contexts
        # and session entity types to be updated, which in turn might affect
        # results of future queries.
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format:
        #   `projects/<Project ID>/agent/sessions/<Session ID>`, or
        #   `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
        #   ID>/sessions/<Session ID>`. If `Environment ID` is not specified, we assume
        #   default 'draft' environment. If `User ID` is not specified, we are using
        #   "-". It's up to the API caller to choose an appropriate `Session ID` and
        #   `User Id`. They can be a random numbers or some type of user and session
        #   identifiers (preferably hashed). The length of the `Session ID` and
        #   `User ID` must not exceed 36 characters.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentRequest] google_cloud_dialogflow_v2beta1_detect_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detect_project_agent_environment_user_session_intent(session, google_cloud_dialogflow_v2beta1_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+session}:detectIntent', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a context.
        # If the specified context already exists, overrides the context.
        # @param [String] parent
        #   Required. The session to create a context for.
        #   Format: `projects/<Project ID>/agent/sessions/<Session ID>` or
        #   `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
        #   ID>/sessions/<Session ID>`. If `Environment ID` is not specified, we assume
        #   default 'draft' environment. If `User ID` is not specified, we assume
        #   default '-' user.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] google_cloud_dialogflow_v2beta1_context_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_environment_user_session_context(parent, google_cloud_dialogflow_v2beta1_context_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/contexts', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_context_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified context.
        # @param [String] name
        #   Required. The name of the context to delete. Format:
        #   `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`
        #   or `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
        #   ID>/sessions/<Session ID>/contexts/<Context ID>`. If `Environment ID` is
        #   not specified, we assume default 'draft' environment. If `User ID` is not
        #   specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_environment_user_session_context(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified context.
        # @param [String] name
        #   Required. The name of the context. Format:
        #   `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`
        #   or `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
        #   ID>/sessions/<Session ID>/contexts/<Context ID>`. If `Environment ID` is
        #   not specified, we assume default 'draft' environment. If `User ID` is not
        #   specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_environment_user_session_context(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all contexts in the specified session.
        # @param [String] parent
        #   Required. The session to list all contexts from.
        #   Format: `projects/<Project ID>/agent/sessions/<Session ID>` or
        #   `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
        #   ID>/sessions/<Session ID>`. If `Environment ID` is not specified, we assume
        #   default 'draft' environment. If `User ID` is not specified, we assume
        #   default '-' user.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By
        #   default 100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_environment_user_session_contexts(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/contexts', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified context.
        # @param [String] name
        #   Required. The unique identifier of the context. Format:
        #   `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`,
        #   or `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
        #   ID>/sessions/<Session ID>/contexts/<Context ID>`.
        #   The `Context ID` is always converted to lowercase, may only contain
        #   characters in a-zA-Z0-9_-% and may be at most 250 bytes long.
        #   If `Environment ID` is not specified, we assume default 'draft'
        #   environment. If `User ID` is not specified, we assume default '-' user.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] google_cloud_dialogflow_v2beta1_context_object
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_environment_user_session_context(name, google_cloud_dialogflow_v2beta1_context_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_context_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a session entity type.
        # If the specified session entity type already exists, overrides the
        # session entity type.
        # @param [String] parent
        #   Required. The session to create a session entity type for.
        #   Format: `projects/<Project ID>/agent/sessions/<Session ID>` or
        #   `projects/<Project ID>/agent/environments/<Environment ID>/users/<User ID>/
        #   sessions/<Session ID>`. If `Environment ID` is not specified, we assume
        #   default 'draft' environment. If `User ID` is not specified, we assume
        #   default '-' user.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] google_cloud_dialogflow_v2beta1_session_entity_type_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_environment_user_session_entity_type(parent, google_cloud_dialogflow_v2beta1_session_entity_type_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified session entity type.
        # @param [String] name
        #   Required. The name of the entity type to delete. Format:
        #   `projects/<Project ID>/agent/sessions/<Session ID>/entityTypes/<Entity Type
        #   Display Name>` or `projects/<Project ID>/agent/environments/<Environment
        #   ID>/users/<User ID>/sessions/<Session ID>/entityTypes/<Entity Type Display
        #   Name>`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. If `User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_environment_user_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified session entity type.
        # @param [String] name
        #   Required. The name of the session entity type. Format:
        #   `projects/<Project ID>/agent/sessions/<Session ID>/entityTypes/<Entity Type
        #   Display Name>` or `projects/<Project ID>/agent/environments/<Environment
        #   ID>/users/<User ID>/sessions/<Session ID>/entityTypes/<Entity Type Display
        #   Name>`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. If `User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_environment_user_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all session entity types in the specified session.
        # @param [String] parent
        #   Required. The session to list all session entity types from.
        #   Format: `projects/<Project ID>/agent/sessions/<Session ID>` or
        #   `projects/<Project ID>/agent/environments/<Environment ID>/users/<User ID>/
        #   sessions/<Session ID>`.
        #   If `Environment ID` is not specified, we assume default 'draft'
        #   environment. If `User ID` is not specified, we assume default '-' user.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By
        #   default 100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_environment_user_session_entity_types(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified session entity type.
        # @param [String] name
        #   Required. The unique identifier of this session entity type. Format:
        #   `projects/<Project ID>/agent/sessions/<Session ID>/entityTypes/<Entity Type
        #   Display Name>`, or
        #   `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
        #   ID>/sessions/<Session ID>/entityTypes/<Entity Type Display Name>`.
        #   If `Environment ID` is not specified, we assume default 'draft'
        #   environment. If `User ID` is not specified, we assume default '-' user.
        #   `<Entity Type Display Name>` must be the display name of an existing entity
        #   type in the same agent that will be overridden or supplemented.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] google_cloud_dialogflow_v2beta1_session_entity_type_object
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_environment_user_session_entity_type(name, google_cloud_dialogflow_v2beta1_session_entity_type_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes intents in the specified agent.
        # Operation <response: google.protobuf.Empty>
        # @param [String] parent
        #   Required. The name of the agent to delete all entities types for. Format:
        #   `projects/<Project ID>/agent`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest] google_cloud_dialogflow_v2beta1_batch_delete_intents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete_intents(parent, google_cloud_dialogflow_v2beta1_batch_delete_intents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/intents:batchDelete', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_delete_intents_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates/Creates multiple intents in the specified agent.
        # Operation <response: BatchUpdateIntentsResponse>
        # @param [String] parent
        #   Required. The name of the agent to update or create intents in.
        #   Format: `projects/<Project ID>/agent`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest] google_cloud_dialogflow_v2beta1_batch_update_intents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_update_intents(parent, google_cloud_dialogflow_v2beta1_batch_update_intents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/intents:batchUpdate', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_update_intents_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an intent in the specified agent.
        # @param [String] parent
        #   Required. The agent to create a intent for.
        #   Format: `projects/<Project ID>/agent`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent] google_cloud_dialogflow_v2beta1_intent_object
        # @param [String] intent_view
        #   Optional. The resource view to apply to the returned intent.
        # @param [String] language_code
        #   Optional. The language of training phrases, parameters and rich messages
        #   defined in `intent`. If not specified, the agent's default language is
        #   used. [Many
        #   languages](https://cloud.google.com/dialogflow/docs/reference/language)
        #   are supported. Note: languages must be enabled in the agent before they can
        #   be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_intent(parent, google_cloud_dialogflow_v2beta1_intent_object = nil, intent_view: nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/intents', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_intent_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent
          command.params['parent'] = parent unless parent.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified intent and its direct or indirect followup intents.
        # @param [String] name
        #   Required. The name of the intent to delete. If this intent has direct or
        #   indirect followup intents, we also delete them.
        #   Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_intent(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified intent.
        # @param [String] name
        #   Required. The name of the intent.
        #   Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
        # @param [String] intent_view
        #   Optional. The resource view to apply to the returned intent.
        # @param [String] language_code
        #   Optional. The language to retrieve training phrases, parameters and rich
        #   messages for. If not specified, the agent's default language is used.
        #   [Many
        #   languages](https://cloud.google.com/dialogflow/docs/reference/language)
        #   are supported. Note: languages must be enabled in the agent before they can
        #   be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_intent(name, intent_view: nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent
          command.params['name'] = name unless name.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all intents in the specified agent.
        # @param [String] parent
        #   Required. The agent to list all intents from.
        #   Format: `projects/<Project ID>/agent`.
        # @param [String] intent_view
        #   Optional. The resource view to apply to the returned intent.
        # @param [String] language_code
        #   Optional. The language to list training phrases, parameters and rich
        #   messages for. If not specified, the agent's default language is used.
        #   [Many
        #   languages](https://cloud.google.com/dialogflow/docs/reference/language)
        #   are supported. Note: languages must be enabled in the agent before they can
        #   be used.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By
        #   default 100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListIntentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListIntentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_intents(parent, intent_view: nil, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/intents', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListIntentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListIntentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified intent.
        # @param [String] name
        #   The unique identifier of this intent.
        #   Required for Intents.UpdateIntent and Intents.BatchUpdateIntents
        #   methods.
        #   Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent] google_cloud_dialogflow_v2beta1_intent_object
        # @param [String] intent_view
        #   Optional. The resource view to apply to the returned intent.
        # @param [String] language_code
        #   Optional. The language of training phrases, parameters and rich messages
        #   defined in `intent`. If not specified, the agent's default language is
        #   used. [Many
        #   languages](https://cloud.google.com/dialogflow/docs/reference/language)
        #   are supported. Note: languages must be enabled in the agent before they can
        #   be used.
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_intent(name, google_cloud_dialogflow_v2beta1_intent_object = nil, intent_view: nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_intent_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent
          command.params['name'] = name unless name.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a knowledge base.
        # Note: The `projects.agent.knowledgeBases` resource is deprecated;
        # only use `projects.knowledgeBases`.
        # @param [String] parent
        #   Required. The project to create a knowledge base for.
        #   Format: `projects/<Project ID>`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] google_cloud_dialogflow_v2beta1_knowledge_base_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_knowledge_basis(parent, google_cloud_dialogflow_v2beta1_knowledge_base_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/knowledgeBases', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_knowledge_base_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified knowledge base.
        # Note: The `projects.agent.knowledgeBases` resource is deprecated;
        # only use `projects.knowledgeBases`.
        # @param [String] name
        #   Required. The name of the knowledge base to delete.
        #   Format: `projects/<Project ID>/knowledgeBases/<Knowledge Base ID>`.
        # @param [Boolean] force
        #   Optional. Force deletes the knowledge base. When set to true, any documents
        #   in the knowledge base are also deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_knowledge_basis(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified knowledge base.
        # Note: The `projects.agent.knowledgeBases` resource is deprecated;
        # only use `projects.knowledgeBases`.
        # @param [String] name
        #   Required. The name of the knowledge base to retrieve.
        #   Format `projects/<Project ID>/knowledgeBases/<Knowledge Base ID>`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_knowledge_basis(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all knowledge bases of the specified agent.
        # Note: The `projects.agent.knowledgeBases` resource is deprecated;
        # only use `projects.knowledgeBases`.
        # @param [String] parent
        #   Required. The project to list of knowledge bases for.
        #   Format: `projects/<Project ID>`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By
        #   default 10 and at most 100.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_knowledge_bases(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/knowledgeBases', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified knowledge base.
        # Note: The `projects.agent.knowledgeBases` resource is deprecated;
        # only use `projects.knowledgeBases`.
        # @param [String] name
        #   The knowledge base resource name.
        #   The name must be empty when creating a knowledge base.
        #   Format: `projects/<Project ID>/knowledgeBases/<Knowledge Base ID>`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] google_cloud_dialogflow_v2beta1_knowledge_base_object
        # @param [String] update_mask
        #   Optional. Not specified means `update all`.
        #   Currently, only `display_name` can be updated, an InvalidArgument will be
        #   returned for attempting to update other fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_knowledge_basis(name, google_cloud_dialogflow_v2beta1_knowledge_base_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_knowledge_base_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new document.
        # Note: The `projects.agent.knowledgeBases.documents` resource is deprecated;
        # only use `projects.knowledgeBases.documents`.
        # Operation <response: Document,
        # metadata: KnowledgeOperationMetadata>
        # @param [String] parent
        #   Required. The knoweldge base to create a document for.
        #   Format: `projects/<Project ID>/knowledgeBases/<Knowledge Base ID>`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document] google_cloud_dialogflow_v2beta1_document_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_knowledge_basis_document(parent, google_cloud_dialogflow_v2beta1_document_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/documents', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_document_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified document.
        # Note: The `projects.agent.knowledgeBases.documents` resource is deprecated;
        # only use `projects.knowledgeBases.documents`.
        # Operation <response: google.protobuf.Empty,
        # metadata: KnowledgeOperationMetadata>
        # @param [String] name
        #   The name of the document to delete.
        #   Format: `projects/<Project ID>/knowledgeBases/<Knowledge Base
        #   ID>/documents/<Document ID>`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_knowledge_basis_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified document.
        # Note: The `projects.agent.knowledgeBases.documents` resource is deprecated;
        # only use `projects.knowledgeBases.documents`.
        # @param [String] name
        #   Required. The name of the document to retrieve.
        #   Format `projects/<Project ID>/knowledgeBases/<Knowledge Base
        #   ID>/documents/<Document ID>`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_knowledge_basis_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all documents of the knowledge base.
        # Note: The `projects.agent.knowledgeBases.documents` resource is deprecated;
        # only use `projects.knowledgeBases.documents`.
        # @param [String] parent
        #   Required. The knowledge base to list all documents for.
        #   Format: `projects/<Project ID>/knowledgeBases/<Knowledge Base ID>`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By
        #   default 10 and at most 100.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListDocumentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListDocumentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_knowledge_basis_documents(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/documents', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListDocumentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListDocumentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified document.
        # Note: The `projects.agent.knowledgeBases.documents` resource is deprecated;
        # only use `projects.knowledgeBases.documents`.
        # Operation <response: Document,
        # metadata: KnowledgeOperationMetadata>
        # @param [String] name
        #   The document resource name.
        #   The name must be empty when creating a document.
        #   Format: `projects/<Project ID>/knowledgeBases/<Knowledge Base
        #   ID>/documents/<Document ID>`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document] google_cloud_dialogflow_v2beta1_document_object
        # @param [String] update_mask
        #   Optional. Not specified means `update all`.
        #   Currently, only `display_name` can be updated, an InvalidArgument will be
        #   returned for attempting to update other fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_knowledge_basis_document(name, google_cloud_dialogflow_v2beta1_document_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_document_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reloads the specified document from its specified source, content_uri or
        # content. The previously loaded content of the document will be deleted.
        # Note: Even when the content of the document has not changed, there still
        # may be side effects because of internal implementation changes.
        # Note: The `projects.agent.knowledgeBases.documents` resource is deprecated;
        # only use `projects.knowledgeBases.documents`.
        # Operation <response: Document,
        # metadata: KnowledgeOperationMetadata>
        # @param [String] name
        #   The name of the document to reload.
        #   Format: `projects/<Project ID>/knowledgeBases/<Knowledge Base
        #   ID>/documents/<Document ID>`
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ReloadDocumentRequest] google_cloud_dialogflow_v2beta1_reload_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reload_project_agent_knowledge_basis_document(name, google_cloud_dialogflow_v2beta1_reload_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+name}:reload', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ReloadDocumentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_reload_document_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes all active contexts in the specified session.
        # @param [String] parent
        #   Required. The name of the session to delete all contexts from. Format:
        #   `projects/<Project ID>/agent/sessions/<Session ID>` or `projects/<Project
        #   ID>/agent/environments/<Environment ID>/users/<User ID>/sessions/<Session
        #   ID>`. If `Environment ID` is not specified we assume default 'draft'
        #   environment. If `User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_session_contexts(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+parent}/contexts', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Processes a natural language query and returns structured, actionable data
        # as a result. This method is not idempotent, because it may cause contexts
        # and session entity types to be updated, which in turn might affect
        # results of future queries.
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format:
        #   `projects/<Project ID>/agent/sessions/<Session ID>`, or
        #   `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
        #   ID>/sessions/<Session ID>`. If `Environment ID` is not specified, we assume
        #   default 'draft' environment. If `User ID` is not specified, we are using
        #   "-". It's up to the API caller to choose an appropriate `Session ID` and
        #   `User Id`. They can be a random numbers or some type of user and session
        #   identifiers (preferably hashed). The length of the `Session ID` and
        #   `User ID` must not exceed 36 characters.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentRequest] google_cloud_dialogflow_v2beta1_detect_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detect_session_intent(session, google_cloud_dialogflow_v2beta1_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+session}:detectIntent', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a context.
        # If the specified context already exists, overrides the context.
        # @param [String] parent
        #   Required. The session to create a context for.
        #   Format: `projects/<Project ID>/agent/sessions/<Session ID>` or
        #   `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
        #   ID>/sessions/<Session ID>`. If `Environment ID` is not specified, we assume
        #   default 'draft' environment. If `User ID` is not specified, we assume
        #   default '-' user.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] google_cloud_dialogflow_v2beta1_context_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_session_context(parent, google_cloud_dialogflow_v2beta1_context_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/contexts', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_context_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified context.
        # @param [String] name
        #   Required. The name of the context to delete. Format:
        #   `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`
        #   or `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
        #   ID>/sessions/<Session ID>/contexts/<Context ID>`. If `Environment ID` is
        #   not specified, we assume default 'draft' environment. If `User ID` is not
        #   specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_session_context(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified context.
        # @param [String] name
        #   Required. The name of the context. Format:
        #   `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`
        #   or `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
        #   ID>/sessions/<Session ID>/contexts/<Context ID>`. If `Environment ID` is
        #   not specified, we assume default 'draft' environment. If `User ID` is not
        #   specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_session_context(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all contexts in the specified session.
        # @param [String] parent
        #   Required. The session to list all contexts from.
        #   Format: `projects/<Project ID>/agent/sessions/<Session ID>` or
        #   `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
        #   ID>/sessions/<Session ID>`. If `Environment ID` is not specified, we assume
        #   default 'draft' environment. If `User ID` is not specified, we assume
        #   default '-' user.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By
        #   default 100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_session_contexts(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/contexts', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified context.
        # @param [String] name
        #   Required. The unique identifier of the context. Format:
        #   `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`,
        #   or `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
        #   ID>/sessions/<Session ID>/contexts/<Context ID>`.
        #   The `Context ID` is always converted to lowercase, may only contain
        #   characters in a-zA-Z0-9_-% and may be at most 250 bytes long.
        #   If `Environment ID` is not specified, we assume default 'draft'
        #   environment. If `User ID` is not specified, we assume default '-' user.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] google_cloud_dialogflow_v2beta1_context_object
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_session_context(name, google_cloud_dialogflow_v2beta1_context_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_context_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a session entity type.
        # If the specified session entity type already exists, overrides the
        # session entity type.
        # @param [String] parent
        #   Required. The session to create a session entity type for.
        #   Format: `projects/<Project ID>/agent/sessions/<Session ID>` or
        #   `projects/<Project ID>/agent/environments/<Environment ID>/users/<User ID>/
        #   sessions/<Session ID>`. If `Environment ID` is not specified, we assume
        #   default 'draft' environment. If `User ID` is not specified, we assume
        #   default '-' user.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] google_cloud_dialogflow_v2beta1_session_entity_type_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_session_entity_type(parent, google_cloud_dialogflow_v2beta1_session_entity_type_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified session entity type.
        # @param [String] name
        #   Required. The name of the entity type to delete. Format:
        #   `projects/<Project ID>/agent/sessions/<Session ID>/entityTypes/<Entity Type
        #   Display Name>` or `projects/<Project ID>/agent/environments/<Environment
        #   ID>/users/<User ID>/sessions/<Session ID>/entityTypes/<Entity Type Display
        #   Name>`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. If `User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified session entity type.
        # @param [String] name
        #   Required. The name of the session entity type. Format:
        #   `projects/<Project ID>/agent/sessions/<Session ID>/entityTypes/<Entity Type
        #   Display Name>` or `projects/<Project ID>/agent/environments/<Environment
        #   ID>/users/<User ID>/sessions/<Session ID>/entityTypes/<Entity Type Display
        #   Name>`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. If `User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all session entity types in the specified session.
        # @param [String] parent
        #   Required. The session to list all session entity types from.
        #   Format: `projects/<Project ID>/agent/sessions/<Session ID>` or
        #   `projects/<Project ID>/agent/environments/<Environment ID>/users/<User ID>/
        #   sessions/<Session ID>`.
        #   If `Environment ID` is not specified, we assume default 'draft'
        #   environment. If `User ID` is not specified, we assume default '-' user.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By
        #   default 100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_session_entity_types(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified session entity type.
        # @param [String] name
        #   Required. The unique identifier of this session entity type. Format:
        #   `projects/<Project ID>/agent/sessions/<Session ID>/entityTypes/<Entity Type
        #   Display Name>`, or
        #   `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
        #   ID>/sessions/<Session ID>/entityTypes/<Entity Type Display Name>`.
        #   If `Environment ID` is not specified, we assume default 'draft'
        #   environment. If `User ID` is not specified, we assume default '-' user.
        #   `<Entity Type Display Name>` must be the display name of an existing entity
        #   type in the same agent that will be overridden or supplemented.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] google_cloud_dialogflow_v2beta1_session_entity_type_object
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_session_entity_type(name, google_cloud_dialogflow_v2beta1_session_entity_type_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a knowledge base.
        # Note: The `projects.agent.knowledgeBases` resource is deprecated;
        # only use `projects.knowledgeBases`.
        # @param [String] parent
        #   Required. The project to create a knowledge base for.
        #   Format: `projects/<Project ID>`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] google_cloud_dialogflow_v2beta1_knowledge_base_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_knowledge_basis(parent, google_cloud_dialogflow_v2beta1_knowledge_base_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/knowledgeBases', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_knowledge_base_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified knowledge base.
        # Note: The `projects.agent.knowledgeBases` resource is deprecated;
        # only use `projects.knowledgeBases`.
        # @param [String] name
        #   Required. The name of the knowledge base to delete.
        #   Format: `projects/<Project ID>/knowledgeBases/<Knowledge Base ID>`.
        # @param [Boolean] force
        #   Optional. Force deletes the knowledge base. When set to true, any documents
        #   in the knowledge base are also deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_knowledge_basis(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified knowledge base.
        # Note: The `projects.agent.knowledgeBases` resource is deprecated;
        # only use `projects.knowledgeBases`.
        # @param [String] name
        #   Required. The name of the knowledge base to retrieve.
        #   Format `projects/<Project ID>/knowledgeBases/<Knowledge Base ID>`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_knowledge_basis(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all knowledge bases of the specified agent.
        # Note: The `projects.agent.knowledgeBases` resource is deprecated;
        # only use `projects.knowledgeBases`.
        # @param [String] parent
        #   Required. The project to list of knowledge bases for.
        #   Format: `projects/<Project ID>`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By
        #   default 10 and at most 100.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_knowledge_bases(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/knowledgeBases', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified knowledge base.
        # Note: The `projects.agent.knowledgeBases` resource is deprecated;
        # only use `projects.knowledgeBases`.
        # @param [String] name
        #   The knowledge base resource name.
        #   The name must be empty when creating a knowledge base.
        #   Format: `projects/<Project ID>/knowledgeBases/<Knowledge Base ID>`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] google_cloud_dialogflow_v2beta1_knowledge_base_object
        # @param [String] update_mask
        #   Optional. Not specified means `update all`.
        #   Currently, only `display_name` can be updated, an InvalidArgument will be
        #   returned for attempting to update other fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_knowledge_basis(name, google_cloud_dialogflow_v2beta1_knowledge_base_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_knowledge_base_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new document.
        # Note: The `projects.agent.knowledgeBases.documents` resource is deprecated;
        # only use `projects.knowledgeBases.documents`.
        # Operation <response: Document,
        # metadata: KnowledgeOperationMetadata>
        # @param [String] parent
        #   Required. The knoweldge base to create a document for.
        #   Format: `projects/<Project ID>/knowledgeBases/<Knowledge Base ID>`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document] google_cloud_dialogflow_v2beta1_document_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_knowledge_basis_document(parent, google_cloud_dialogflow_v2beta1_document_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/documents', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_document_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified document.
        # Note: The `projects.agent.knowledgeBases.documents` resource is deprecated;
        # only use `projects.knowledgeBases.documents`.
        # Operation <response: google.protobuf.Empty,
        # metadata: KnowledgeOperationMetadata>
        # @param [String] name
        #   The name of the document to delete.
        #   Format: `projects/<Project ID>/knowledgeBases/<Knowledge Base
        #   ID>/documents/<Document ID>`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_knowledge_basis_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified document.
        # Note: The `projects.agent.knowledgeBases.documents` resource is deprecated;
        # only use `projects.knowledgeBases.documents`.
        # @param [String] name
        #   Required. The name of the document to retrieve.
        #   Format `projects/<Project ID>/knowledgeBases/<Knowledge Base
        #   ID>/documents/<Document ID>`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_knowledge_basis_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all documents of the knowledge base.
        # Note: The `projects.agent.knowledgeBases.documents` resource is deprecated;
        # only use `projects.knowledgeBases.documents`.
        # @param [String] parent
        #   Required. The knowledge base to list all documents for.
        #   Format: `projects/<Project ID>/knowledgeBases/<Knowledge Base ID>`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By
        #   default 10 and at most 100.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListDocumentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListDocumentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_knowledge_basis_documents(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/documents', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListDocumentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListDocumentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified document.
        # Note: The `projects.agent.knowledgeBases.documents` resource is deprecated;
        # only use `projects.knowledgeBases.documents`.
        # Operation <response: Document,
        # metadata: KnowledgeOperationMetadata>
        # @param [String] name
        #   The document resource name.
        #   The name must be empty when creating a document.
        #   Format: `projects/<Project ID>/knowledgeBases/<Knowledge Base
        #   ID>/documents/<Document ID>`.
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document] google_cloud_dialogflow_v2beta1_document_object
        # @param [String] update_mask
        #   Optional. Not specified means `update all`.
        #   Currently, only `display_name` can be updated, an InvalidArgument will be
        #   returned for attempting to update other fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_knowledge_basis_document(name, google_cloud_dialogflow_v2beta1_document_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_document_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reloads the specified document from its specified source, content_uri or
        # content. The previously loaded content of the document will be deleted.
        # Note: Even when the content of the document has not changed, there still
        # may be side effects because of internal implementation changes.
        # Note: The `projects.agent.knowledgeBases.documents` resource is deprecated;
        # only use `projects.knowledgeBases.documents`.
        # Operation <response: Document,
        # metadata: KnowledgeOperationMetadata>
        # @param [String] name
        #   The name of the document to reload.
        #   Format: `projects/<Project ID>/knowledgeBases/<Knowledge Base
        #   ID>/documents/<Document ID>`
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ReloadDocumentRequest] google_cloud_dialogflow_v2beta1_reload_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reload_project_knowledge_basis_document(name, google_cloud_dialogflow_v2beta1_reload_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+name}:reload', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ReloadDocumentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_reload_document_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation.  Clients can use this
        # method to poll the operation result at intervals as recommended by the API
        # service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
