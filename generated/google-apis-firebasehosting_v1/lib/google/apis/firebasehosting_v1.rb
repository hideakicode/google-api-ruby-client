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

require 'google/apis/firebasehosting_v1/service.rb'
require 'google/apis/firebasehosting_v1/classes.rb'
require 'google/apis/firebasehosting_v1/representations.rb'
require 'google/apis/firebasehosting_v1/gem_version.rb'

module Google
  module Apis
    # Firebase Hosting API
    #
    # The Firebase Hosting REST API enables programmatic and customizable
    # deployments to your Firebase-hosted sites. Use this REST API to deploy new or
    # updated hosting configurations and content files.
    #
    # @see https://firebase.google.com/docs/hosting/
    module FirebasehostingV1
      # Version of the Firebase Hosting API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'
    end
  end
end
