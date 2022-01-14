# Copyright 2020 Google LLC
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
    module BigtableadminV1
      
      class AutoscalingLimits
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingTargets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Backup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterAutoscalingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateBackupMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateClusterMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateInstanceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OptimizeRestoredTableMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartialUpdateClusterMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartialUpdateClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartialUpdateInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreTableMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateAppProfileMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateClusterMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateInstanceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingLimits
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_serve_nodes, as: 'maxServeNodes'
          property :min_serve_nodes, as: 'minServeNodes'
        end
      end
      
      class AutoscalingTargets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu_utilization_percent, as: 'cpuUtilizationPercent'
        end
      end
      
      class Backup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_info, as: 'encryptionInfo', class: Google::Apis::BigtableadminV1::EncryptionInfo, decorator: Google::Apis::BigtableadminV1::EncryptionInfo::Representation
      
          property :end_time, as: 'endTime'
          property :expire_time, as: 'expireTime'
          property :name, as: 'name'
          property :size_bytes, :numeric_string => true, as: 'sizeBytes'
          property :source_table, as: 'sourceTable'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class BackupInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup, as: 'backup'
          property :end_time, as: 'endTime'
          property :source_table, as: 'sourceTable'
          property :start_time, as: 'startTime'
        end
      end
      
      class Cluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_config, as: 'clusterConfig', class: Google::Apis::BigtableadminV1::ClusterConfig, decorator: Google::Apis::BigtableadminV1::ClusterConfig::Representation
      
          property :default_storage_type, as: 'defaultStorageType'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::BigtableadminV1::EncryptionConfig, decorator: Google::Apis::BigtableadminV1::EncryptionConfig::Representation
      
          property :location, as: 'location'
          property :name, as: 'name'
          property :serve_nodes, as: 'serveNodes'
          property :state, as: 'state'
        end
      end
      
      class ClusterAutoscalingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoscaling_limits, as: 'autoscalingLimits', class: Google::Apis::BigtableadminV1::AutoscalingLimits, decorator: Google::Apis::BigtableadminV1::AutoscalingLimits::Representation
      
          property :autoscaling_targets, as: 'autoscalingTargets', class: Google::Apis::BigtableadminV1::AutoscalingTargets, decorator: Google::Apis::BigtableadminV1::AutoscalingTargets::Representation
      
        end
      end
      
      class ClusterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_autoscaling_config, as: 'clusterAutoscalingConfig', class: Google::Apis::BigtableadminV1::ClusterAutoscalingConfig, decorator: Google::Apis::BigtableadminV1::ClusterAutoscalingConfig::Representation
      
        end
      end
      
      class CreateBackupMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :source_table, as: 'sourceTable'
          property :start_time, as: 'startTime'
        end
      end
      
      class CreateClusterMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV1::CreateClusterRequest, decorator: Google::Apis::BigtableadminV1::CreateClusterRequest::Representation
      
          property :request_time, as: 'requestTime'
          hash :tables, as: 'tables', class: Google::Apis::BigtableadminV1::TableProgress, decorator: Google::Apis::BigtableadminV1::TableProgress::Representation
      
        end
      end
      
      class CreateClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster', class: Google::Apis::BigtableadminV1::Cluster, decorator: Google::Apis::BigtableadminV1::Cluster::Representation
      
          property :cluster_id, as: 'clusterId'
          property :parent, as: 'parent'
        end
      end
      
      class CreateInstanceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV1::CreateInstanceRequest, decorator: Google::Apis::BigtableadminV1::CreateInstanceRequest::Representation
      
          property :request_time, as: 'requestTime'
        end
      end
      
      class CreateInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :clusters, as: 'clusters', class: Google::Apis::BigtableadminV1::Cluster, decorator: Google::Apis::BigtableadminV1::Cluster::Representation
      
          property :instance, as: 'instance', class: Google::Apis::BigtableadminV1::Instance, decorator: Google::Apis::BigtableadminV1::Instance::Representation
      
          property :instance_id, as: 'instanceId'
          property :parent, as: 'parent'
        end
      end
      
      class EncryptionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class EncryptionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_status, as: 'encryptionStatus', class: Google::Apis::BigtableadminV1::Status, decorator: Google::Apis::BigtableadminV1::Status::Representation
      
          property :encryption_type, as: 'encryptionType'
          property :kms_key_version, as: 'kmsKeyVersion'
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :type, as: 'type'
        end
      end
      
      class OperationProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :progress_percent, as: 'progressPercent'
          property :start_time, as: 'startTime'
        end
      end
      
      class OptimizeRestoredTableMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :progress, as: 'progress', class: Google::Apis::BigtableadminV1::OperationProgress, decorator: Google::Apis::BigtableadminV1::OperationProgress::Representation
      
        end
      end
      
      class PartialUpdateClusterMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV1::PartialUpdateClusterRequest, decorator: Google::Apis::BigtableadminV1::PartialUpdateClusterRequest::Representation
      
          property :request_time, as: 'requestTime'
        end
      end
      
      class PartialUpdateClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster', class: Google::Apis::BigtableadminV1::Cluster, decorator: Google::Apis::BigtableadminV1::Cluster::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class PartialUpdateInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::BigtableadminV1::Instance, decorator: Google::Apis::BigtableadminV1::Instance::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class RestoreTableMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_info, as: 'backupInfo', class: Google::Apis::BigtableadminV1::BackupInfo, decorator: Google::Apis::BigtableadminV1::BackupInfo::Representation
      
          property :name, as: 'name'
          property :optimize_table_operation_name, as: 'optimizeTableOperationName'
          property :progress, as: 'progress', class: Google::Apis::BigtableadminV1::OperationProgress, decorator: Google::Apis::BigtableadminV1::OperationProgress::Representation
      
          property :source_type, as: 'sourceType'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class TableProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :estimated_copied_bytes, :numeric_string => true, as: 'estimatedCopiedBytes'
          property :estimated_size_bytes, :numeric_string => true, as: 'estimatedSizeBytes'
          property :state, as: 'state'
        end
      end
      
      class UpdateAppProfileMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UpdateClusterMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV1::Cluster, decorator: Google::Apis::BigtableadminV1::Cluster::Representation
      
          property :request_time, as: 'requestTime'
        end
      end
      
      class UpdateInstanceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV1::PartialUpdateInstanceRequest, decorator: Google::Apis::BigtableadminV1::PartialUpdateInstanceRequest::Representation
      
          property :request_time, as: 'requestTime'
        end
      end
    end
  end
end
