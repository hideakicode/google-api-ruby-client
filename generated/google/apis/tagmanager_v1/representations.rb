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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module TagmanagerV1
      
      class Account
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountAccess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Condition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Container
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ContainerAccess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ContainerVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ContainerVersionHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CreateContainerVersionRequestVersionOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CreateContainerVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListAccountUsersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListContainerVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListContainersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListMacrosResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListRulesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListTagsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListTriggersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListVariablesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Macro
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Parameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PublishContainerVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Rule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Tag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Trigger
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class UserAccess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Variable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      # @private
      class Account
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :fingerprint, as: 'fingerprint'
          property :name, as: 'name'
          property :share_data, as: 'shareData'
        end
      end
      
      # @private
      class AccountAccess
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permission, as: 'permission'
        end
      end
      
      # @private
      class Condition
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parameter, as: 'parameter', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::Parameter::Representation
      
          property :type, as: 'type'
        end
      end
      
      # @private
      class Container
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :container_id, as: 'containerId'
          collection :domain_name, as: 'domainName'
          collection :enabled_built_in_variable, as: 'enabledBuiltInVariable'
          property :fingerprint, as: 'fingerprint'
          property :name, as: 'name'
          property :notes, as: 'notes'
          property :public_id, as: 'publicId'
          property :time_zone_country_id, as: 'timeZoneCountryId'
          property :time_zone_id, as: 'timeZoneId'
          collection :usage_context, as: 'usageContext'
        end
      end
      
      # @private
      class ContainerAccess
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_id, as: 'containerId'
          collection :permission, as: 'permission'
        end
      end
      
      # @private
      class ContainerVersion
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :container, as: 'container', class: Google::Apis::TagmanagerV1::Container, decorator: Google::Apis::TagmanagerV1::Container::Representation
      
          property :container_id, as: 'containerId'
          property :container_version_id, as: 'containerVersionId'
          property :deleted, as: 'deleted'
          property :fingerprint, as: 'fingerprint'
          collection :macro, as: 'macro', class: Google::Apis::TagmanagerV1::Macro, decorator: Google::Apis::TagmanagerV1::Macro::Representation
      
          property :name, as: 'name'
          property :notes, as: 'notes'
          collection :rule, as: 'rule', class: Google::Apis::TagmanagerV1::Rule, decorator: Google::Apis::TagmanagerV1::Rule::Representation
      
          collection :tag, as: 'tag', class: Google::Apis::TagmanagerV1::Tag, decorator: Google::Apis::TagmanagerV1::Tag::Representation
      
          collection :trigger, as: 'trigger', class: Google::Apis::TagmanagerV1::Trigger, decorator: Google::Apis::TagmanagerV1::Trigger::Representation
      
          collection :variable, as: 'variable', class: Google::Apis::TagmanagerV1::Variable, decorator: Google::Apis::TagmanagerV1::Variable::Representation
      
        end
      end
      
      # @private
      class ContainerVersionHeader
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :container_id, as: 'containerId'
          property :container_version_id, as: 'containerVersionId'
          property :deleted, as: 'deleted'
          property :name, as: 'name'
          property :num_macros, as: 'numMacros'
          property :num_rules, as: 'numRules'
          property :num_tags, as: 'numTags'
          property :num_triggers, as: 'numTriggers'
          property :num_variables, as: 'numVariables'
        end
      end
      
      # @private
      class CreateContainerVersionRequestVersionOptions
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :notes, as: 'notes'
          property :quick_preview, as: 'quickPreview'
        end
      end
      
      # @private
      class CreateContainerVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compiler_error, as: 'compilerError'
          property :container_version, as: 'containerVersion', class: Google::Apis::TagmanagerV1::ContainerVersion, decorator: Google::Apis::TagmanagerV1::ContainerVersion::Representation
      
        end
      end
      
      # @private
      class ListAccountUsersResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_access, as: 'userAccess', class: Google::Apis::TagmanagerV1::UserAccess, decorator: Google::Apis::TagmanagerV1::UserAccess::Representation
      
        end
      end
      
      # @private
      class ListAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accounts, as: 'accounts', class: Google::Apis::TagmanagerV1::Account, decorator: Google::Apis::TagmanagerV1::Account::Representation
      
        end
      end
      
      # @private
      class ListContainerVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :container_version, as: 'containerVersion', class: Google::Apis::TagmanagerV1::ContainerVersion, decorator: Google::Apis::TagmanagerV1::ContainerVersion::Representation
      
          collection :container_version_header, as: 'containerVersionHeader', class: Google::Apis::TagmanagerV1::ContainerVersionHeader, decorator: Google::Apis::TagmanagerV1::ContainerVersionHeader::Representation
      
        end
      end
      
      # @private
      class ListContainersResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :containers, as: 'containers', class: Google::Apis::TagmanagerV1::Container, decorator: Google::Apis::TagmanagerV1::Container::Representation
      
        end
      end
      
      # @private
      class ListMacrosResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :macros, as: 'macros', class: Google::Apis::TagmanagerV1::Macro, decorator: Google::Apis::TagmanagerV1::Macro::Representation
      
        end
      end
      
      # @private
      class ListRulesResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::TagmanagerV1::Rule, decorator: Google::Apis::TagmanagerV1::Rule::Representation
      
        end
      end
      
      # @private
      class ListTagsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tags, as: 'tags', class: Google::Apis::TagmanagerV1::Tag, decorator: Google::Apis::TagmanagerV1::Tag::Representation
      
        end
      end
      
      # @private
      class ListTriggersResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :triggers, as: 'triggers', class: Google::Apis::TagmanagerV1::Trigger, decorator: Google::Apis::TagmanagerV1::Trigger::Representation
      
        end
      end
      
      # @private
      class ListVariablesResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :variables, as: 'variables', class: Google::Apis::TagmanagerV1::Variable, decorator: Google::Apis::TagmanagerV1::Variable::Representation
      
        end
      end
      
      # @private
      class Macro
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :container_id, as: 'containerId'
          collection :disabling_rule_id, as: 'disablingRuleId'
          collection :enabling_rule_id, as: 'enablingRuleId'
          property :fingerprint, as: 'fingerprint'
          property :macro_id, as: 'macroId'
          property :name, as: 'name'
          property :notes, as: 'notes'
          collection :parameter, as: 'parameter', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::Parameter::Representation
      
          property :schedule_end_ms, as: 'scheduleEndMs'
          property :schedule_start_ms, as: 'scheduleStartMs'
          property :type, as: 'type'
        end
      end
      
      # @private
      class Parameter
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          collection :list, as: 'list', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::Parameter::Representation
      
          collection :map, as: 'map', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::Parameter::Representation
      
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end
      
      # @private
      class PublishContainerVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compiler_error, as: 'compilerError'
          property :container_version, as: 'containerVersion', class: Google::Apis::TagmanagerV1::ContainerVersion, decorator: Google::Apis::TagmanagerV1::ContainerVersion::Representation
      
        end
      end
      
      # @private
      class Rule
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          collection :condition, as: 'condition', class: Google::Apis::TagmanagerV1::Condition, decorator: Google::Apis::TagmanagerV1::Condition::Representation
      
          property :container_id, as: 'containerId'
          property :fingerprint, as: 'fingerprint'
          property :name, as: 'name'
          property :notes, as: 'notes'
          property :rule_id, as: 'ruleId'
        end
      end
      
      # @private
      class Tag
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          collection :blocking_rule_id, as: 'blockingRuleId'
          collection :blocking_trigger_id, as: 'blockingTriggerId'
          property :container_id, as: 'containerId'
          property :fingerprint, as: 'fingerprint'
          collection :firing_rule_id, as: 'firingRuleId'
          collection :firing_trigger_id, as: 'firingTriggerId'
          property :live_only, as: 'liveOnly'
          property :name, as: 'name'
          property :notes, as: 'notes'
          collection :parameter, as: 'parameter', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::Parameter::Representation
      
          property :priority, as: 'priority', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::Parameter::Representation
      
          property :schedule_end_ms, as: 'scheduleEndMs'
          property :schedule_start_ms, as: 'scheduleStartMs'
          property :tag_id, as: 'tagId'
          property :type, as: 'type'
        end
      end
      
      # @private
      class Trigger
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          collection :auto_event_filter, as: 'autoEventFilter', class: Google::Apis::TagmanagerV1::Condition, decorator: Google::Apis::TagmanagerV1::Condition::Representation
      
          property :check_validation, as: 'checkValidation', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::Parameter::Representation
      
          property :container_id, as: 'containerId'
          collection :custom_event_filter, as: 'customEventFilter', class: Google::Apis::TagmanagerV1::Condition, decorator: Google::Apis::TagmanagerV1::Condition::Representation
      
          property :enable_all_videos, as: 'enableAllVideos', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::Parameter::Representation
      
          property :event_name, as: 'eventName', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::Parameter::Representation
      
          collection :filter, as: 'filter', class: Google::Apis::TagmanagerV1::Condition, decorator: Google::Apis::TagmanagerV1::Condition::Representation
      
          property :fingerprint, as: 'fingerprint'
          property :interval, as: 'interval', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::Parameter::Representation
      
          property :limit, as: 'limit', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::Parameter::Representation
      
          property :name, as: 'name'
          property :trigger_id, as: 'triggerId'
          property :type, as: 'type'
          property :unique_trigger_id, as: 'uniqueTriggerId', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::Parameter::Representation
      
          property :video_percentage_list, as: 'videoPercentageList', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::Parameter::Representation
      
          property :wait_for_tags, as: 'waitForTags', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::Parameter::Representation
      
          property :wait_for_tags_timeout, as: 'waitForTagsTimeout', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::Parameter::Representation
      
        end
      end
      
      # @private
      class UserAccess
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_access, as: 'accountAccess', class: Google::Apis::TagmanagerV1::AccountAccess, decorator: Google::Apis::TagmanagerV1::AccountAccess::Representation
      
          property :account_id, as: 'accountId'
          collection :container_access, as: 'containerAccess', class: Google::Apis::TagmanagerV1::ContainerAccess, decorator: Google::Apis::TagmanagerV1::ContainerAccess::Representation
      
          property :email_address, as: 'emailAddress'
          property :permission_id, as: 'permissionId'
        end
      end
      
      # @private
      class Variable
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :container_id, as: 'containerId'
          collection :disabling_trigger_id, as: 'disablingTriggerId'
          collection :enabling_trigger_id, as: 'enablingTriggerId'
          property :fingerprint, as: 'fingerprint'
          property :name, as: 'name'
          property :notes, as: 'notes'
          collection :parameter, as: 'parameter', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::Parameter::Representation
      
          property :schedule_end_ms, as: 'scheduleEndMs'
          property :schedule_start_ms, as: 'scheduleStartMs'
          property :type, as: 'type'
          property :variable_id, as: 'variableId'
        end
      end
    end
  end
end
