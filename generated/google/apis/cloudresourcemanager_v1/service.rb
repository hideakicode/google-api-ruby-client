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
    module CloudresourcemanagerV1
      # Google Cloud Resource Manager API
      #
      # The Google Cloud Resource Manager API provides methods for creating, reading,
      #  and updating project metadata.
      #
      # @example
      #    require 'google/apis/cloudresourcemanager_v1'
      #
      #    Cloudresourcemanager = Google::Apis::CloudresourcemanagerV1 # Alias the module
      #    service = Cloudresourcemanager::CloudResourceManagerService.new
      #
      # @see https://cloud.google.com/resource-manager
      class CloudResourceManagerService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://cloudresourcemanager.googleapis.com/', '')
        end
        
        # Delete a Lien by `name`.
        # Callers of this method will require permission on the `parent` resource.
        # For example, a Lien with a `parent` of `projects/1234` requires permission
        # `resourcemanager.projects.updateLiens`.
        # @param [String] name
        #   The name/identifier of the Lien to delete.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_lien(name, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV1::Empty::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all Liens applied to the `parent` resource.
        # Callers of this method will require permission on the `parent` resource.
        # For example, a Lien with a `parent` of `projects/1234` requires permission
        # `resourcemanager.projects.get`.
        # @param [String] parent
        #   The name of the resource to list all attached Liens.
        #   For example, `projects/1234`.
        # @param [String] page_token
        #   The `next_page_token` value returned from a previous List request, if any.
        # @param [Fixnum] page_size
        #   The maximum number of items to return. This is a suggestion for the server.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::ListLiensResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::ListLiensResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_liens(parent: nil, page_token: nil, page_size: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/liens', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV1::ListLiensResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::ListLiensResponse
          command.query['parent'] = parent unless parent.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a Lien which applies to the resource denoted by the `parent` field.
        # Callers of this method will require permission on the `parent` resource.
        # For example, applying to `projects/1234` requires permission
        # `resourcemanager.projects.updateLiens`.
        # NOTE: Some resources may limit the number of Liens which may be applied.
        # @param [Google::Apis::CloudresourcemanagerV1::Lien] lien_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::Lien] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::Lien]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_lien(lien_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/liens', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::Lien::Representation
          command.request_object = lien_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::Lien::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::Lien
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation.  Clients can use this
        # method to poll the operation result at intervals as recommended by the API
        # service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the effective `Policy` on a resource. This is the result of merging
        # `Policies` in the resource hierarchy. The returned `Policy` will not have
        # an `etag`set because it is a computed `Policy` across multiple resources.
        # @param [String] resource
        #   The name of the resource to start computing the effective `Policy`.
        # @param [Google::Apis::CloudresourcemanagerV1::GetEffectiveOrgPolicyRequest] get_effective_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::OrgPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::OrgPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_effective_org_policy_v1(resource, get_effective_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:getEffectiveOrgPolicyV1', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::GetEffectiveOrgPolicyRequest::Representation
          command.request_object = get_effective_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::OrgPolicy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::OrgPolicy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified `Policy` on the resource. Creates a new `Policy` for
        # that `Constraint` on the resource if one does not exist.
        # Not supplying an `etag` on the request `Policy` results in an unconditional
        # write of the `Policy`.
        # @param [String] resource
        #   Resource name of the resource to attach the `Policy`.
        # @param [Google::Apis::CloudresourcemanagerV1::SetOrgPolicyRequest] set_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::OrgPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::OrgPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_folder_org_policy_v1(resource, set_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:setOrgPolicyV1', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::SetOrgPolicyRequest::Representation
          command.request_object = set_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::OrgPolicy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::OrgPolicy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Clears a `Policy` from a resource.
        # @param [String] resource
        #   Name of the resource for the `Policy` to clear.
        # @param [Google::Apis::CloudresourcemanagerV1::ClearOrgPolicyRequest] clear_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clear_folder_org_policy(resource, clear_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:clearOrgPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::ClearOrgPolicyRequest::Representation
          command.request_object = clear_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::Empty::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::Empty
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified `Policy` on the resource. Creates a new `Policy` for
        # that `Constraint` on the resource if one does not exist.
        # Not supplying an `etag` on the request `Policy` results in an unconditional
        # write of the `Policy`.
        # @param [String] resource
        #   Resource name of the resource to attach the `Policy`.
        # @param [Google::Apis::CloudresourcemanagerV1::SetOrgPolicyRequest] set_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::OrgPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::OrgPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_folder_org_policy(resource, set_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:setOrgPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::SetOrgPolicyRequest::Representation
          command.request_object = set_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::OrgPolicy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::OrgPolicy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Clears a `Policy` from a resource.
        # @param [String] resource
        #   Name of the resource for the `Policy` to clear.
        # @param [Google::Apis::CloudresourcemanagerV1::ClearOrgPolicyRequest] clear_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clear_folder_org_policy_v1(resource, clear_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:clearOrgPolicyV1', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::ClearOrgPolicyRequest::Representation
          command.request_object = clear_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::Empty::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::Empty
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists `Constraints` that could be applied on the specified resource.
        # @param [String] resource
        #   Name of the resource to list `Constraints` for.
        # @param [Google::Apis::CloudresourcemanagerV1::ListAvailableOrgPolicyConstraintsRequest] list_available_org_policy_constraints_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::ListAvailableOrgPolicyConstraintsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::ListAvailableOrgPolicyConstraintsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_available_org_policy_constraints(resource, list_available_org_policy_constraints_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:listAvailableOrgPolicyConstraints', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::ListAvailableOrgPolicyConstraintsRequest::Representation
          command.request_object = list_available_org_policy_constraints_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::ListAvailableOrgPolicyConstraintsResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::ListAvailableOrgPolicyConstraintsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the `Policies` set for a particular resource.
        # @param [String] resource
        #   Name of the resource to list Policies for.
        # @param [Google::Apis::CloudresourcemanagerV1::ListOrgPoliciesRequest] list_org_policies_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::ListOrgPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::ListOrgPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_org_policies(resource, list_org_policies_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:listOrgPolicies', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::ListOrgPoliciesRequest::Representation
          command.request_object = list_org_policies_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::ListOrgPoliciesResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::ListOrgPoliciesResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a `Policy` on a resource.
        # If no `Policy` is set on the resource, a `Policy` is returned with default
        # values including `POLICY_TYPE_NOT_SET` for the `policy_type oneof`. The
        # `etag` value can be used with `SetOrgPolicy()` to create or update a
        # `Policy` during read-modify-write.
        # @param [String] resource
        #   Name of the resource the `Policy` is set on.
        # @param [Google::Apis::CloudresourcemanagerV1::GetOrgPolicyRequest] get_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::OrgPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::OrgPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_org_policy(resource, get_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:getOrgPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::GetOrgPolicyRequest::Representation
          command.request_object = get_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::OrgPolicy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::OrgPolicy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a `Policy` on a resource.
        # If no `Policy` is set on the resource, a `Policy` is returned with default
        # values including `POLICY_TYPE_NOT_SET` for the `policy_type oneof`. The
        # `etag` value can be used with `SetOrgPolicy()` to create or update a
        # `Policy` during read-modify-write.
        # @param [String] resource
        #   Name of the resource the `Policy` is set on.
        # @param [Google::Apis::CloudresourcemanagerV1::GetOrgPolicyRequest] get_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::OrgPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::OrgPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_org_policy_v1(resource, get_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:getOrgPolicyV1', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::GetOrgPolicyRequest::Representation
          command.request_object = get_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::OrgPolicy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::OrgPolicy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the effective `Policy` on a resource. This is the result of merging
        # `Policies` in the resource hierarchy. The returned `Policy` will not have
        # an `etag`set because it is a computed `Policy` across multiple resources.
        # @param [String] resource
        #   The name of the resource to start computing the effective `Policy`.
        # @param [Google::Apis::CloudresourcemanagerV1::GetEffectiveOrgPolicyRequest] get_effective_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::OrgPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::OrgPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_effective_org_policy(resource, get_effective_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:getEffectiveOrgPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::GetEffectiveOrgPolicyRequest::Representation
          command.request_object = get_effective_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::OrgPolicy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::OrgPolicy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Projects that are visible to the user and satisfy the
        # specified filter. This method returns Projects in an unspecified order.
        # New Projects do not necessarily appear at the end of the list.
        # @param [String] page_token
        #   A pagination token returned from a previous call to ListProjects
        #   that indicates from where listing should continue.
        #   Optional.
        # @param [Fixnum] page_size
        #   The maximum number of Projects to return in the response.
        #   The server can return fewer Projects than requested.
        #   If unspecified, server picks an appropriate default.
        #   Optional.
        # @param [String] filter
        #   An expression for filtering the results of the request.  Filter rules are
        #   case insensitive. The fields eligible for filtering are:
        #   + `name`
        #   + `id`
        #   + <code>labels.<em>key</em></code> where *key* is the name of a label
        #   Some examples of using labels as filters:
        #   |Filter|Description|
        #   |------|-----------|
        #   |name:*|The project has a name.|
        #   |name:Howl|The project's name is `Howl` or `howl`.|
        #   |name:HOWL|Equivalent to above.|
        #   |NAME:howl|Equivalent to above.|
        #   |labels.color:*|The project has the label `color`.|
        #   |labels.color:red|The project's label `color` has the value `red`.|
        #   |labels.color:red&nbsp;labels.size:big|The project's label `color` has the
        #   value `red` and its label `size` has the value `big`.
        #   Optional.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::ListProjectsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::ListProjectsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_projects(page_token: nil, page_size: nil, filter: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/projects', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV1::ListProjectsResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::ListProjectsResponse
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified `Policy` on the resource. Creates a new `Policy` for
        # that `Constraint` on the resource if one does not exist.
        # Not supplying an `etag` on the request `Policy` results in an unconditional
        # write of the `Policy`.
        # @param [String] resource
        #   Resource name of the resource to attach the `Policy`.
        # @param [Google::Apis::CloudresourcemanagerV1::SetOrgPolicyRequest] set_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::OrgPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::OrgPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_org_policy(resource, set_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:setOrgPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::SetOrgPolicyRequest::Representation
          command.request_object = set_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::OrgPolicy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::OrgPolicy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Clears a `Policy` from a resource.
        # @param [String] resource
        #   Name of the resource for the `Policy` to clear.
        # @param [Google::Apis::CloudresourcemanagerV1::ClearOrgPolicyRequest] clear_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clear_project_org_policy_v1(resource, clear_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:clearOrgPolicyV1', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::ClearOrgPolicyRequest::Representation
          command.request_object = clear_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::Empty::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::Empty
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Request that a new Project be created. The result is an Operation which
        # can be used to track the creation process. It is automatically deleted
        # after a few hours, so there is no need to call DeleteOperation.
        # Our SLO permits Project creation to take up to 30 seconds at the 90th
        # percentile. As of 2016-08-29, we are observing 6 seconds 50th percentile
        # latency. 95th percentile latency is around 11 seconds. We recommend
        # polling at the 5th second with an exponential backoff.
        # @param [Google::Apis::CloudresourcemanagerV1::Project] project_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project(project_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::Project::Representation
          command.request_object = project_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::Operation
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the `Policies` set for a particular resource.
        # @param [String] resource
        #   Name of the resource to list Policies for.
        # @param [Google::Apis::CloudresourcemanagerV1::ListOrgPoliciesRequest] list_org_policies_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::ListOrgPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::ListOrgPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_org_policies(resource, list_org_policies_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:listOrgPolicies', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::ListOrgPoliciesRequest::Representation
          command.request_object = list_org_policies_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::ListOrgPoliciesResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::ListOrgPoliciesResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the Project identified by the specified
        # `project_id` (for example, `my-project-123`).
        # The caller must have read permissions for this Project.
        # @param [String] project_id
        #   The Project ID (for example, `my-project-123`).
        #   Required.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::Project] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::Project]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project(project_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/projects/{projectId}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV1::Project::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::Project
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of ancestors in the resource hierarchy for the Project
        # identified by the specified `project_id` (for example, `my-project-123`).
        # The caller must have read permissions for this Project.
        # @param [String] project_id
        #   The Project ID (for example, `my-project-123`).
        #   Required.
        # @param [Google::Apis::CloudresourcemanagerV1::GetAncestryRequest] get_ancestry_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::GetAncestryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::GetAncestryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_ancestry(project_id, get_ancestry_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}:getAncestry', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::GetAncestryRequest::Representation
          command.request_object = get_ancestry_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::GetAncestryResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::GetAncestryResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the effective `Policy` on a resource. This is the result of merging
        # `Policies` in the resource hierarchy. The returned `Policy` will not have
        # an `etag`set because it is a computed `Policy` across multiple resources.
        # @param [String] resource
        #   The name of the resource to start computing the effective `Policy`.
        # @param [Google::Apis::CloudresourcemanagerV1::GetEffectiveOrgPolicyRequest] get_effective_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::OrgPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::OrgPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_effective_org_policy_v1(resource, get_effective_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:getEffectiveOrgPolicyV1', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::GetEffectiveOrgPolicyRequest::Representation
          command.request_object = get_effective_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::OrgPolicy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::OrgPolicy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified Project.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested.
        #   See the operation documentation for the appropriate value for this field.
        # @param [Google::Apis::CloudresourcemanagerV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_iam_permissions(resource, test_iam_permissions_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks the Project identified by the specified
        # `project_id` (for example, `my-project-123`) for deletion.
        # This method will only affect the Project if the following criteria are met:
        # + The Project does not have a billing account associated with it.
        # + The Project has a lifecycle state of
        # ACTIVE.
        # This method changes the Project's lifecycle state from
        # ACTIVE
        # to DELETE_REQUESTED.
        # The deletion starts at an unspecified time,
        # at which point the Project is no longer accessible.
        # Until the deletion completes, you can check the lifecycle state
        # checked by retrieving the Project with GetProject,
        # and the Project remains visible to ListProjects.
        # However, you cannot update the project.
        # After the deletion completes, the Project is not retrievable by
        # the  GetProject and
        # ListProjects methods.
        # The caller must have modify permissions for this Project.
        # @param [String] project_id
        #   The Project ID (for example, `foo-bar-123`).
        #   Required.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project(project_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1/projects/{projectId}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV1::Empty::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::Empty
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Clears a `Policy` from a resource.
        # @param [String] resource
        #   Name of the resource for the `Policy` to clear.
        # @param [Google::Apis::CloudresourcemanagerV1::ClearOrgPolicyRequest] clear_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clear_project_org_policy(resource, clear_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:clearOrgPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::ClearOrgPolicyRequest::Representation
          command.request_object = clear_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::Empty::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::Empty
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the IAM access control policy for the specified Project. Replaces
        # any existing policy.
        # The following constraints apply when using `setIamPolicy()`:
        # + Project does not support `allUsers` and `allAuthenticatedUsers` as
        # `members` in a `Binding` of a `Policy`.
        # + The owner role can be granted only to `user` and `serviceAccount`.
        # + Service accounts can be made owners of a project directly
        # without any restrictions. However, to be added as an owner, a user must be
        # invited via Cloud Platform console and must accept the invitation.
        # + A user cannot be granted the owner role using `setIamPolicy()`. The user
        # must be granted the owner role using the Cloud Platform Console and must
        # explicitly accept the invitation.
        # + Invitations to grant the owner role cannot be sent using
        # `setIamPolicy()`;
        # they must be sent only using the Cloud Platform Console.
        # + Membership changes that leave the project without any owners that have
        # accepted the Terms of Service (ToS) will be rejected.
        # + There must be at least one owner who has accepted the Terms of
        # Service (ToS) agreement in the policy. Calling `setIamPolicy()` to
        # remove the last ToS-accepted owner from the policy will fail. This
        # restriction also applies to legacy projects that no longer have owners
        # who have accepted the ToS. Edits to IAM policies will be rejected until
        # the lack of a ToS-accepting owner is rectified.
        # + Calling this method requires enabling the App Engine Admin API.
        # Note: Removing service accounts from policies or changing their roles
        # can render services completely inoperable. It is important to understand
        # how the service account is being used before removing or updating its
        # roles.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified.
        #   See the operation documentation for the appropriate value for this field.
        # @param [Google::Apis::CloudresourcemanagerV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_iam_policy(resource, set_iam_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::Policy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists `Constraints` that could be applied on the specified resource.
        # @param [String] resource
        #   Name of the resource to list `Constraints` for.
        # @param [Google::Apis::CloudresourcemanagerV1::ListAvailableOrgPolicyConstraintsRequest] list_available_org_policy_constraints_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::ListAvailableOrgPolicyConstraintsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::ListAvailableOrgPolicyConstraintsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_available_org_policy_constraints(resource, list_available_org_policy_constraints_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:listAvailableOrgPolicyConstraints', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::ListAvailableOrgPolicyConstraintsRequest::Representation
          command.request_object = list_available_org_policy_constraints_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::ListAvailableOrgPolicyConstraintsResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::ListAvailableOrgPolicyConstraintsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the IAM access control policy for the specified Project.
        # Permission is denied if the policy or the resource does not exist.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested.
        #   See the operation documentation for the appropriate value for this field.
        # @param [Google::Apis::CloudresourcemanagerV1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_iam_policy(resource, get_iam_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::Policy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a `Policy` on a resource.
        # If no `Policy` is set on the resource, a `Policy` is returned with default
        # values including `POLICY_TYPE_NOT_SET` for the `policy_type oneof`. The
        # `etag` value can be used with `SetOrgPolicy()` to create or update a
        # `Policy` during read-modify-write.
        # @param [String] resource
        #   Name of the resource the `Policy` is set on.
        # @param [Google::Apis::CloudresourcemanagerV1::GetOrgPolicyRequest] get_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::OrgPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::OrgPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_org_policy(resource, get_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:getOrgPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::GetOrgPolicyRequest::Representation
          command.request_object = get_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::OrgPolicy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::OrgPolicy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a `Policy` on a resource.
        # If no `Policy` is set on the resource, a `Policy` is returned with default
        # values including `POLICY_TYPE_NOT_SET` for the `policy_type oneof`. The
        # `etag` value can be used with `SetOrgPolicy()` to create or update a
        # `Policy` during read-modify-write.
        # @param [String] resource
        #   Name of the resource the `Policy` is set on.
        # @param [Google::Apis::CloudresourcemanagerV1::GetOrgPolicyRequest] get_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::OrgPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::OrgPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_org_policy_v1(resource, get_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:getOrgPolicyV1', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::GetOrgPolicyRequest::Representation
          command.request_object = get_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::OrgPolicy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::OrgPolicy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restores the Project identified by the specified
        # `project_id` (for example, `my-project-123`).
        # You can only use this method for a Project that has a lifecycle state of
        # DELETE_REQUESTED.
        # After deletion starts, the Project cannot be restored.
        # The caller must have modify permissions for this Project.
        # @param [String] project_id
        #   The project ID (for example, `foo-bar-123`).
        #   Required.
        # @param [Google::Apis::CloudresourcemanagerV1::UndeleteProjectRequest] undelete_project_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_project(project_id, undelete_project_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}:undelete', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::UndeleteProjectRequest::Representation
          command.request_object = undelete_project_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::Empty::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::Empty
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the effective `Policy` on a resource. This is the result of merging
        # `Policies` in the resource hierarchy. The returned `Policy` will not have
        # an `etag`set because it is a computed `Policy` across multiple resources.
        # @param [String] resource
        #   The name of the resource to start computing the effective `Policy`.
        # @param [Google::Apis::CloudresourcemanagerV1::GetEffectiveOrgPolicyRequest] get_effective_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::OrgPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::OrgPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_effective_org_policy(resource, get_effective_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:getEffectiveOrgPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::GetEffectiveOrgPolicyRequest::Representation
          command.request_object = get_effective_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::OrgPolicy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::OrgPolicy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the attributes of the Project identified by the specified
        # `project_id` (for example, `my-project-123`).
        # The caller must have modify permissions for this Project.
        # @param [String] project_id
        #   The project ID (for example, `my-project-123`).
        #   Required.
        # @param [Google::Apis::CloudresourcemanagerV1::Project] project_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::Project] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::Project]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project(project_id, project_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v1/projects/{projectId}', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::Project::Representation
          command.request_object = project_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::Project::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::Project
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified `Policy` on the resource. Creates a new `Policy` for
        # that `Constraint` on the resource if one does not exist.
        # Not supplying an `etag` on the request `Policy` results in an unconditional
        # write of the `Policy`.
        # @param [String] resource
        #   Resource name of the resource to attach the `Policy`.
        # @param [Google::Apis::CloudresourcemanagerV1::SetOrgPolicyRequest] set_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::OrgPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::OrgPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_org_policy_v1(resource, set_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:setOrgPolicyV1', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::SetOrgPolicyRequest::Representation
          command.request_object = set_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::OrgPolicy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::OrgPolicy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified `Policy` on the resource. Creates a new `Policy` for
        # that `Constraint` on the resource if one does not exist.
        # Not supplying an `etag` on the request `Policy` results in an unconditional
        # write of the `Policy`.
        # @param [String] resource
        #   Resource name of the resource to attach the `Policy`.
        # @param [Google::Apis::CloudresourcemanagerV1::SetOrgPolicyRequest] set_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::OrgPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::OrgPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_organization_org_policy(resource, set_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:setOrgPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::SetOrgPolicyRequest::Representation
          command.request_object = set_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::OrgPolicy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::OrgPolicy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Clears a `Policy` from a resource.
        # @param [String] resource
        #   Name of the resource for the `Policy` to clear.
        # @param [Google::Apis::CloudresourcemanagerV1::ClearOrgPolicyRequest] clear_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clear_organization_org_policy_v1(resource, clear_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:clearOrgPolicyV1', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::ClearOrgPolicyRequest::Representation
          command.request_object = clear_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::Empty::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::Empty
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the `Policies` set for a particular resource.
        # @param [String] resource
        #   Name of the resource to list Policies for.
        # @param [Google::Apis::CloudresourcemanagerV1::ListOrgPoliciesRequest] list_org_policies_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::ListOrgPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::ListOrgPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_org_policies(resource, list_org_policies_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:listOrgPolicies', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::ListOrgPoliciesRequest::Representation
          command.request_object = list_org_policies_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::ListOrgPoliciesResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::ListOrgPoliciesResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches Organization resources that are visible to the user and satisfy
        # the specified filter. This method returns Organizations in an unspecified
        # order. New Organizations do not necessarily appear at the end of the
        # results.
        # @param [Google::Apis::CloudresourcemanagerV1::SearchOrganizationsRequest] search_organizations_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::SearchOrganizationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::SearchOrganizationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_organizations(search_organizations_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/organizations:search', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::SearchOrganizationsRequest::Representation
          command.request_object = search_organizations_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::SearchOrganizationsResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::SearchOrganizationsResponse
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches an Organization resource identified by the specified resource name.
        # @param [String] name
        #   The resource name of the Organization to fetch, e.g. "organizations/1234".
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::Organization] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::Organization]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization(name, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV1::Organization::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::Organization
          command.params['name'] = name unless name.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified Organization.
        # The `resource` field should be the organization's resource name,
        # e.g. "organizations/123".
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested.
        #   See the operation documentation for the appropriate value for this field.
        # @param [Google::Apis::CloudresourcemanagerV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_organization_iam_permissions(resource, test_iam_permissions_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the effective `Policy` on a resource. This is the result of merging
        # `Policies` in the resource hierarchy. The returned `Policy` will not have
        # an `etag`set because it is a computed `Policy` across multiple resources.
        # @param [String] resource
        #   The name of the resource to start computing the effective `Policy`.
        # @param [Google::Apis::CloudresourcemanagerV1::GetEffectiveOrgPolicyRequest] get_effective_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::OrgPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::OrgPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_effective_org_policy_v1(resource, get_effective_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:getEffectiveOrgPolicyV1', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::GetEffectiveOrgPolicyRequest::Representation
          command.request_object = get_effective_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::OrgPolicy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::OrgPolicy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Clears a `Policy` from a resource.
        # @param [String] resource
        #   Name of the resource for the `Policy` to clear.
        # @param [Google::Apis::CloudresourcemanagerV1::ClearOrgPolicyRequest] clear_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clear_organization_org_policy(resource, clear_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:clearOrgPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::ClearOrgPolicyRequest::Representation
          command.request_object = clear_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::Empty::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::Empty
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on an Organization resource. Replaces any
        # existing policy. The `resource` field should be the organization's resource
        # name, e.g. "organizations/123".
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified.
        #   See the operation documentation for the appropriate value for this field.
        # @param [Google::Apis::CloudresourcemanagerV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_organization_iam_policy(resource, set_iam_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::Policy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists `Constraints` that could be applied on the specified resource.
        # @param [String] resource
        #   Name of the resource to list `Constraints` for.
        # @param [Google::Apis::CloudresourcemanagerV1::ListAvailableOrgPolicyConstraintsRequest] list_available_org_policy_constraints_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::ListAvailableOrgPolicyConstraintsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::ListAvailableOrgPolicyConstraintsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_available_org_policy_constraints(resource, list_available_org_policy_constraints_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:listAvailableOrgPolicyConstraints', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::ListAvailableOrgPolicyConstraintsRequest::Representation
          command.request_object = list_available_org_policy_constraints_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::ListAvailableOrgPolicyConstraintsResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::ListAvailableOrgPolicyConstraintsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for an Organization resource. May be empty
        # if no such policy or resource exists. The `resource` field should be the
        # organization's resource name, e.g. "organizations/123".
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested.
        #   See the operation documentation for the appropriate value for this field.
        # @param [Google::Apis::CloudresourcemanagerV1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_iam_policy(resource, get_iam_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::Policy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a `Policy` on a resource.
        # If no `Policy` is set on the resource, a `Policy` is returned with default
        # values including `POLICY_TYPE_NOT_SET` for the `policy_type oneof`. The
        # `etag` value can be used with `SetOrgPolicy()` to create or update a
        # `Policy` during read-modify-write.
        # @param [String] resource
        #   Name of the resource the `Policy` is set on.
        # @param [Google::Apis::CloudresourcemanagerV1::GetOrgPolicyRequest] get_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::OrgPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::OrgPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_org_policy(resource, get_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:getOrgPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::GetOrgPolicyRequest::Representation
          command.request_object = get_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::OrgPolicy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::OrgPolicy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a `Policy` on a resource.
        # If no `Policy` is set on the resource, a `Policy` is returned with default
        # values including `POLICY_TYPE_NOT_SET` for the `policy_type oneof`. The
        # `etag` value can be used with `SetOrgPolicy()` to create or update a
        # `Policy` during read-modify-write.
        # @param [String] resource
        #   Name of the resource the `Policy` is set on.
        # @param [Google::Apis::CloudresourcemanagerV1::GetOrgPolicyRequest] get_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::OrgPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::OrgPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_org_policy_v1(resource, get_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:getOrgPolicyV1', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::GetOrgPolicyRequest::Representation
          command.request_object = get_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::OrgPolicy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::OrgPolicy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the effective `Policy` on a resource. This is the result of merging
        # `Policies` in the resource hierarchy. The returned `Policy` will not have
        # an `etag`set because it is a computed `Policy` across multiple resources.
        # @param [String] resource
        #   The name of the resource to start computing the effective `Policy`.
        # @param [Google::Apis::CloudresourcemanagerV1::GetEffectiveOrgPolicyRequest] get_effective_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::OrgPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::OrgPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_effective_org_policy(resource, get_effective_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:getEffectiveOrgPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::GetEffectiveOrgPolicyRequest::Representation
          command.request_object = get_effective_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::OrgPolicy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::OrgPolicy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified `Policy` on the resource. Creates a new `Policy` for
        # that `Constraint` on the resource if one does not exist.
        # Not supplying an `etag` on the request `Policy` results in an unconditional
        # write of the `Policy`.
        # @param [String] resource
        #   Resource name of the resource to attach the `Policy`.
        # @param [Google::Apis::CloudresourcemanagerV1::SetOrgPolicyRequest] set_org_policy_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1::OrgPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1::OrgPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_organization_org_policy_v1(resource, set_org_policy_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:setOrgPolicyV1', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1::SetOrgPolicyRequest::Representation
          command.request_object = set_org_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1::OrgPolicy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1::OrgPolicy
          command.params['resource'] = resource unless resource.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
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
