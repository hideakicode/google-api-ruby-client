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

require 'google/apis/adexchangebuyer2_v2beta1/service.rb'
require 'google/apis/adexchangebuyer2_v2beta1/classes.rb'
require 'google/apis/adexchangebuyer2_v2beta1/representations.rb'

module Google
  module Apis
    # Ad Exchange Buyer API II
    #
    # Accesses the latest features for managing Ad Exchange accounts, Real-Time
    # Bidding configurations and auction metrics, and Marketplace programmatic deals.
    #
    # @see https://developers.google.com/ad-exchange/buyer-rest/reference/rest/
    module Adexchangebuyer2V2beta1
      VERSION = 'V2beta1'
      REVISION = '20180411'

      # Manage your Ad Exchange buyer account configuration
      AUTH_ADEXCHANGE_BUYER = 'https://www.googleapis.com/auth/adexchange.buyer'
    end
  end
end
