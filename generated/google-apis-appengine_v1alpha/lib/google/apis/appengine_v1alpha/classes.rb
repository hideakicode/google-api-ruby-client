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
    module AppengineV1alpha
      
      # An SSL certificate that a user has been authorized to administer. A user is
      # authorized to administer any certificate that applies to one of their
      # authorized domains.
      class AuthorizedCertificate
        include Google::Apis::Core::Hashable
      
        # An SSL certificate obtained from a certificate authority.
        # Corresponds to the JSON property `certificateRawData`
        # @return [Google::Apis::AppengineV1alpha::CertificateRawData]
        attr_accessor :certificate_raw_data
      
        # The user-specified display name of the certificate. This is not guaranteed to
        # be unique. Example: My Certificate.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Aggregate count of the domain mappings with this certificate mapped. This
        # count includes domain mappings on applications for which the user does not
        # have VIEWER permissions.Only returned by GET or LIST requests when
        # specifically requested by the view=FULL_CERTIFICATE option.@OutputOnly
        # Corresponds to the JSON property `domainMappingsCount`
        # @return [Fixnum]
        attr_accessor :domain_mappings_count
      
        # Topmost applicable domains of this certificate. This certificate applies to
        # these domains and their subdomains. Example: example.com.@OutputOnly
        # Corresponds to the JSON property `domainNames`
        # @return [Array<String>]
        attr_accessor :domain_names
      
        # The time when this certificate expires. To update the renewal time on this
        # certificate, upload an SSL certificate with a different expiration time using
        # AuthorizedCertificates.UpdateAuthorizedCertificate.@OutputOnly
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Relative name of the certificate. This is a unique value autogenerated on
        # AuthorizedCertificate resource creation. Example: 12345.@OutputOnly
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A certificate managed by App Engine.
        # Corresponds to the JSON property `managedCertificate`
        # @return [Google::Apis::AppengineV1alpha::ManagedCertificate]
        attr_accessor :managed_certificate
      
        # Full path to the AuthorizedCertificate resource in the API. Example: apps/
        # myapp/authorizedCertificates/12345.@OutputOnly
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The full paths to user visible Domain Mapping resources that have this
        # certificate mapped. Example: apps/myapp/domainMappings/example.com.This may
        # not represent the full list of mapped domain mappings if the user does not
        # have VIEWER permissions on all of the applications that have this certificate
        # mapped. See domain_mappings_count for a complete count.Only returned by GET or
        # LIST requests when specifically requested by the view=FULL_CERTIFICATE option.@
        # OutputOnly
        # Corresponds to the JSON property `visibleDomainMappings`
        # @return [Array<String>]
        attr_accessor :visible_domain_mappings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_raw_data = args[:certificate_raw_data] if args.key?(:certificate_raw_data)
          @display_name = args[:display_name] if args.key?(:display_name)
          @domain_mappings_count = args[:domain_mappings_count] if args.key?(:domain_mappings_count)
          @domain_names = args[:domain_names] if args.key?(:domain_names)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @id = args[:id] if args.key?(:id)
          @managed_certificate = args[:managed_certificate] if args.key?(:managed_certificate)
          @name = args[:name] if args.key?(:name)
          @visible_domain_mappings = args[:visible_domain_mappings] if args.key?(:visible_domain_mappings)
        end
      end
      
      # A domain that a user has been authorized to administer. To authorize use of a
      # domain, verify ownership via Webmaster Central (https://www.google.com/
      # webmasters/verification/home).
      class AuthorizedDomain
        include Google::Apis::Core::Hashable
      
        # Fully qualified domain name of the domain authorized for use. Example: example.
        # com.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Full path to the AuthorizedDomain resource in the API. Example: apps/myapp/
        # authorizedDomains/example.com.@OutputOnly
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # An SSL certificate obtained from a certificate authority.
      class CertificateRawData
        include Google::Apis::Core::Hashable
      
        # Unencrypted PEM encoded RSA private key. This field is set once on certificate
        # creation and then encrypted. The key size must be 2048 bits or fewer. Must
        # include the header and footer. Example: -----BEGIN RSA PRIVATE KEY----- -----
        # END RSA PRIVATE KEY----- @InputOnly
        # Corresponds to the JSON property `privateKey`
        # @return [String]
        attr_accessor :private_key
      
        # PEM encoded x.509 public key certificate. This field is set once on
        # certificate creation. Must include the header and footer. Example: -----BEGIN
        # CERTIFICATE----- -----END CERTIFICATE-----
        # Corresponds to the JSON property `publicCertificate`
        # @return [String]
        attr_accessor :public_certificate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @private_key = args[:private_key] if args.key?(:private_key)
          @public_certificate = args[:public_certificate] if args.key?(:public_certificate)
        end
      end
      
      # Metadata for the given google.longrunning.Operation during a google.appengine.
      # v1.CreateVersionRequest.
      class CreateVersionMetadataV1
        include Google::Apis::Core::Hashable
      
        # The Cloud Build ID if one was created as part of the version create. @
        # OutputOnly
        # Corresponds to the JSON property `cloudBuildId`
        # @return [String]
        attr_accessor :cloud_build_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_build_id = args[:cloud_build_id] if args.key?(:cloud_build_id)
        end
      end
      
      # Metadata for the given google.longrunning.Operation during a google.appengine.
      # v1alpha.CreateVersionRequest.
      class CreateVersionMetadataV1Alpha
        include Google::Apis::Core::Hashable
      
        # The Cloud Build ID if one was created as part of the version create. @
        # OutputOnly
        # Corresponds to the JSON property `cloudBuildId`
        # @return [String]
        attr_accessor :cloud_build_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_build_id = args[:cloud_build_id] if args.key?(:cloud_build_id)
        end
      end
      
      # Metadata for the given google.longrunning.Operation during a google.appengine.
      # v1beta.CreateVersionRequest.
      class CreateVersionMetadataV1Beta
        include Google::Apis::Core::Hashable
      
        # The Cloud Build ID if one was created as part of the version create. @
        # OutputOnly
        # Corresponds to the JSON property `cloudBuildId`
        # @return [String]
        attr_accessor :cloud_build_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_build_id = args[:cloud_build_id] if args.key?(:cloud_build_id)
        end
      end
      
      # A domain serving an App Engine application.
      class DomainMapping
        include Google::Apis::Core::Hashable
      
        # Relative name of the domain serving the application. Example: example.com.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Full path to the DomainMapping resource in the API. Example: apps/myapp/
        # domainMapping/example.com.@OutputOnly
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The resource records required to configure this domain mapping. These records
        # must be added to the domain's DNS configuration in order to serve the
        # application via this domain mapping.@OutputOnly
        # Corresponds to the JSON property `resourceRecords`
        # @return [Array<Google::Apis::AppengineV1alpha::ResourceRecord>]
        attr_accessor :resource_records
      
        # SSL configuration for a DomainMapping resource.
        # Corresponds to the JSON property `sslSettings`
        # @return [Google::Apis::AppengineV1alpha::SslSettings]
        attr_accessor :ssl_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @resource_records = args[:resource_records] if args.key?(:resource_records)
          @ssl_settings = args[:ssl_settings] if args.key?(:ssl_settings)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata for the given google.cloud.location.Location.
      class GoogleAppengineV1betaLocationMetadata
        include Google::Apis::Core::Hashable
      
        # App Engine flexible environment is available in the given location.@OutputOnly
        # Corresponds to the JSON property `flexibleEnvironmentAvailable`
        # @return [Boolean]
        attr_accessor :flexible_environment_available
        alias_method :flexible_environment_available?, :flexible_environment_available
      
        # Output only. Search API (https://cloud.google.com/appengine/docs/standard/
        # python/search) is available in the given location.
        # Corresponds to the JSON property `searchApiAvailable`
        # @return [Boolean]
        attr_accessor :search_api_available
        alias_method :search_api_available?, :search_api_available
      
        # App Engine standard environment is available in the given location.@OutputOnly
        # Corresponds to the JSON property `standardEnvironmentAvailable`
        # @return [Boolean]
        attr_accessor :standard_environment_available
        alias_method :standard_environment_available?, :standard_environment_available
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flexible_environment_available = args[:flexible_environment_available] if args.key?(:flexible_environment_available)
          @search_api_available = args[:search_api_available] if args.key?(:search_api_available)
          @standard_environment_available = args[:standard_environment_available] if args.key?(:standard_environment_available)
        end
      end
      
      # Response message for AuthorizedCertificates.ListAuthorizedCertificates.
      class ListAuthorizedCertificatesResponse
        include Google::Apis::Core::Hashable
      
        # The SSL certificates the user is authorized to administer.
        # Corresponds to the JSON property `certificates`
        # @return [Array<Google::Apis::AppengineV1alpha::AuthorizedCertificate>]
        attr_accessor :certificates
      
        # Continuation token for fetching the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificates = args[:certificates] if args.key?(:certificates)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for AuthorizedDomains.ListAuthorizedDomains.
      class ListAuthorizedDomainsResponse
        include Google::Apis::Core::Hashable
      
        # The authorized domains belonging to the user.
        # Corresponds to the JSON property `domains`
        # @return [Array<Google::Apis::AppengineV1alpha::AuthorizedDomain>]
        attr_accessor :domains
      
        # Continuation token for fetching the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domains = args[:domains] if args.key?(:domains)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for DomainMappings.ListDomainMappings.
      class ListDomainMappingsResponse
        include Google::Apis::Core::Hashable
      
        # The domain mappings for the application.
        # Corresponds to the JSON property `domainMappings`
        # @return [Array<Google::Apis::AppengineV1alpha::DomainMapping>]
        attr_accessor :domain_mappings
      
        # Continuation token for fetching the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_mappings = args[:domain_mappings] if args.key?(:domain_mappings)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::AppengineV1alpha::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::AppengineV1alpha::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # A resource that represents Google Cloud Platform location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: "us-east1".
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: "projects/example-project/locations/us-east1"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Metadata for the given google.cloud.location.Location.
      class LocationMetadata
        include Google::Apis::Core::Hashable
      
        # App Engine flexible environment is available in the given location.@OutputOnly
        # Corresponds to the JSON property `flexibleEnvironmentAvailable`
        # @return [Boolean]
        attr_accessor :flexible_environment_available
        alias_method :flexible_environment_available?, :flexible_environment_available
      
        # Output only. Search API (https://cloud.google.com/appengine/docs/standard/
        # python/search) is available in the given location.
        # Corresponds to the JSON property `searchApiAvailable`
        # @return [Boolean]
        attr_accessor :search_api_available
        alias_method :search_api_available?, :search_api_available
      
        # App Engine standard environment is available in the given location.@OutputOnly
        # Corresponds to the JSON property `standardEnvironmentAvailable`
        # @return [Boolean]
        attr_accessor :standard_environment_available
        alias_method :standard_environment_available?, :standard_environment_available
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flexible_environment_available = args[:flexible_environment_available] if args.key?(:flexible_environment_available)
          @search_api_available = args[:search_api_available] if args.key?(:search_api_available)
          @standard_environment_available = args[:standard_environment_available] if args.key?(:standard_environment_available)
        end
      end
      
      # A certificate managed by App Engine.
      class ManagedCertificate
        include Google::Apis::Core::Hashable
      
        # Time at which the certificate was last renewed. The renewal process is fully
        # managed. Certificate renewal will automatically occur before the certificate
        # expires. Renewal errors can be tracked via ManagementStatus.@OutputOnly
        # Corresponds to the JSON property `lastRenewalTime`
        # @return [String]
        attr_accessor :last_renewal_time
      
        # Status of certificate management. Refers to the most recent certificate
        # acquisition or renewal attempt.@OutputOnly
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_renewal_time = args[:last_renewal_time] if args.key?(:last_renewal_time)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is false, it means the operation is still in progress. If true,
        # the operation is completed, and either error or response is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The Status type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by gRPC
        # (https://github.com/grpc). Each Status message contains three pieces of data:
        # error code, error message, and error details.You can find out more about this
        # error model and how to work with it in the API Design Guide (https://cloud.
        # google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::AppengineV1alpha::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the name should be
        # a resource name ending with operations/`unique_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as Delete, the response is google.
        # protobuf.Empty. If the original method is standard Get/Create/Update, the
        # response should be the resource. For other methods, the response should have
        # the type XxxResponse, where Xxx is the original method name. For example, if
        # the original method name is TakeSnapshot(), the inferred response type is
        # TakeSnapshotResponse.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Metadata for the given google.longrunning.Operation.
      class OperationMetadataV1
        include Google::Apis::Core::Hashable
      
        # Metadata for the given google.longrunning.Operation during a google.appengine.
        # v1.CreateVersionRequest.
        # Corresponds to the JSON property `createVersionMetadata`
        # @return [Google::Apis::AppengineV1alpha::CreateVersionMetadataV1]
        attr_accessor :create_version_metadata
      
        # Time that this operation completed.@OutputOnly
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Ephemeral message that may change every time the operation is polled. @
        # OutputOnly
        # Corresponds to the JSON property `ephemeralMessage`
        # @return [String]
        attr_accessor :ephemeral_message
      
        # Time that this operation was created.@OutputOnly
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # API method that initiated this operation. Example: google.appengine.v1.
        # Versions.CreateVersion.@OutputOnly
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Name of the resource that this operation is acting on. Example: apps/myapp/
        # services/default.@OutputOnly
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # User who requested this operation.@OutputOnly
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # Durable messages that persist on every operation poll. @OutputOnly
        # Corresponds to the JSON property `warning`
        # @return [Array<String>]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_version_metadata = args[:create_version_metadata] if args.key?(:create_version_metadata)
          @end_time = args[:end_time] if args.key?(:end_time)
          @ephemeral_message = args[:ephemeral_message] if args.key?(:ephemeral_message)
          @insert_time = args[:insert_time] if args.key?(:insert_time)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @target = args[:target] if args.key?(:target)
          @user = args[:user] if args.key?(:user)
          @warning = args[:warning] if args.key?(:warning)
        end
      end
      
      # Metadata for the given google.longrunning.Operation.
      class OperationMetadataV1Alpha
        include Google::Apis::Core::Hashable
      
        # Metadata for the given google.longrunning.Operation during a google.appengine.
        # v1alpha.CreateVersionRequest.
        # Corresponds to the JSON property `createVersionMetadata`
        # @return [Google::Apis::AppengineV1alpha::CreateVersionMetadataV1Alpha]
        attr_accessor :create_version_metadata
      
        # Time that this operation completed.@OutputOnly
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Ephemeral message that may change every time the operation is polled. @
        # OutputOnly
        # Corresponds to the JSON property `ephemeralMessage`
        # @return [String]
        attr_accessor :ephemeral_message
      
        # Time that this operation was created.@OutputOnly
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # API method that initiated this operation. Example: google.appengine.v1alpha.
        # Versions.CreateVersion.@OutputOnly
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Name of the resource that this operation is acting on. Example: apps/myapp/
        # services/default.@OutputOnly
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # User who requested this operation.@OutputOnly
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # Durable messages that persist on every operation poll. @OutputOnly
        # Corresponds to the JSON property `warning`
        # @return [Array<String>]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_version_metadata = args[:create_version_metadata] if args.key?(:create_version_metadata)
          @end_time = args[:end_time] if args.key?(:end_time)
          @ephemeral_message = args[:ephemeral_message] if args.key?(:ephemeral_message)
          @insert_time = args[:insert_time] if args.key?(:insert_time)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @target = args[:target] if args.key?(:target)
          @user = args[:user] if args.key?(:user)
          @warning = args[:warning] if args.key?(:warning)
        end
      end
      
      # Metadata for the given google.longrunning.Operation.
      class OperationMetadataV1Beta
        include Google::Apis::Core::Hashable
      
        # Metadata for the given google.longrunning.Operation during a google.appengine.
        # v1beta.CreateVersionRequest.
        # Corresponds to the JSON property `createVersionMetadata`
        # @return [Google::Apis::AppengineV1alpha::CreateVersionMetadataV1Beta]
        attr_accessor :create_version_metadata
      
        # Time that this operation completed.@OutputOnly
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Ephemeral message that may change every time the operation is polled. @
        # OutputOnly
        # Corresponds to the JSON property `ephemeralMessage`
        # @return [String]
        attr_accessor :ephemeral_message
      
        # Time that this operation was created.@OutputOnly
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # API method that initiated this operation. Example: google.appengine.v1beta.
        # Versions.CreateVersion.@OutputOnly
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Name of the resource that this operation is acting on. Example: apps/myapp/
        # services/default.@OutputOnly
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # User who requested this operation.@OutputOnly
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # Durable messages that persist on every operation poll. @OutputOnly
        # Corresponds to the JSON property `warning`
        # @return [Array<String>]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_version_metadata = args[:create_version_metadata] if args.key?(:create_version_metadata)
          @end_time = args[:end_time] if args.key?(:end_time)
          @ephemeral_message = args[:ephemeral_message] if args.key?(:ephemeral_message)
          @insert_time = args[:insert_time] if args.key?(:insert_time)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @target = args[:target] if args.key?(:target)
          @user = args[:user] if args.key?(:user)
          @warning = args[:warning] if args.key?(:warning)
        end
      end
      
      # A DNS resource record.
      class ResourceRecord
        include Google::Apis::Core::Hashable
      
        # Relative name of the object affected by this record. Only applicable for CNAME
        # records. Example: 'www'.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Data for this record. Values vary by record type, as defined in RFC 1035 (
        # section 5) and RFC 1034 (section 3.6.1).
        # Corresponds to the JSON property `rrdata`
        # @return [String]
        attr_accessor :rrdata
      
        # Resource record type. Example: AAAA.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @rrdata = args[:rrdata] if args.key?(:rrdata)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # SSL configuration for a DomainMapping resource.
      class SslSettings
        include Google::Apis::Core::Hashable
      
        # ID of the AuthorizedCertificate resource configuring SSL for the application.
        # Clearing this field will remove SSL support.By default, a managed certificate
        # is automatically created for every domain mapping. To omit SSL support or to
        # configure SSL manually, specify no_managed_certificate on a CREATE or UPDATE
        # request. You must be authorized to administer the AuthorizedCertificate
        # resource to manually map it to a DomainMapping resource. Example: 12345.
        # Corresponds to the JSON property `certificateId`
        # @return [String]
        attr_accessor :certificate_id
      
        # Whether the mapped certificate is an App Engine managed certificate. Managed
        # certificates are created by default with a domain mapping. To opt out, specify
        # no_managed_certificate on a CREATE or UPDATE request.@OutputOnly
        # Corresponds to the JSON property `isManagedCertificate`
        # @return [Boolean]
        attr_accessor :is_managed_certificate
        alias_method :is_managed_certificate?, :is_managed_certificate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_id = args[:certificate_id] if args.key?(:certificate_id)
          @is_managed_certificate = args[:is_managed_certificate] if args.key?(:is_managed_certificate)
        end
      end
      
      # The Status type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by gRPC
      # (https://github.com/grpc). Each Status message contains three pieces of data:
      # error code, error message, and error details.You can find out more about this
      # error model and how to work with it in the API Design Guide (https://cloud.
      # google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
    end
  end
end
