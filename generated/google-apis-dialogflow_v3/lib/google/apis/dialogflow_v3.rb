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

require 'google/apis/dialogflow_v3/service.rb'
require 'google/apis/dialogflow_v3/classes.rb'
require 'google/apis/dialogflow_v3/representations.rb'
require 'google/apis/dialogflow_v3/gem_version.rb'

module Google
  module Apis
    # Dialogflow API
    #
    # Builds conversational interfaces (for example, chatbots, and voice-powered
    # apps and devices).
    #
    # @see https://cloud.google.com/dialogflow/
    module DialogflowV3
      # Version of the Dialogflow API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V3'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'

      # View, manage and query your Dialogflow agents
      AUTH_DIALOGFLOW = 'https://www.googleapis.com/auth/dialogflow'
    end
  end
end
