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

require 'google/apis/fitness_v1/service.rb'
require 'google/apis/fitness_v1/classes.rb'
require 'google/apis/fitness_v1/representations.rb'
require 'google/apis/fitness_v1/gem_version.rb'

module Google
  module Apis
    # Fitness API
    #
    # The Fitness API for managing users' fitness tracking data.
    #
    # @see https://developers.google.com/fit/rest/v1/get-started
    module FitnessV1
      # Version of the Fitness API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # Use Google Fit to see and store your physical activity data
      AUTH_FITNESS_ACTIVITY_READ = 'https://www.googleapis.com/auth/fitness.activity.read'

      # Add to your Google Fit physical activity data
      AUTH_FITNESS_ACTIVITY_WRITE = 'https://www.googleapis.com/auth/fitness.activity.write'

      # See info about your blood glucose in Google Fit. I consent to Google sharing my blood glucose information with this app.
      AUTH_FITNESS_BLOOD_GLUCOSE_READ = 'https://www.googleapis.com/auth/fitness.blood_glucose.read'

      # Add info about your blood glucose to Google Fit. I consent to Google using my blood glucose information with this app.
      AUTH_FITNESS_BLOOD_GLUCOSE_WRITE = 'https://www.googleapis.com/auth/fitness.blood_glucose.write'

      # See info about your blood pressure in Google Fit. I consent to Google sharing my blood pressure information with this app.
      AUTH_FITNESS_BLOOD_PRESSURE_READ = 'https://www.googleapis.com/auth/fitness.blood_pressure.read'

      # Add info about your blood pressure in Google Fit. I consent to Google using my blood pressure information with this app.
      AUTH_FITNESS_BLOOD_PRESSURE_WRITE = 'https://www.googleapis.com/auth/fitness.blood_pressure.write'

      # See info about your body measurements in Google Fit
      AUTH_FITNESS_BODY_READ = 'https://www.googleapis.com/auth/fitness.body.read'

      # Add info about your body measurements to Google Fit
      AUTH_FITNESS_BODY_WRITE = 'https://www.googleapis.com/auth/fitness.body.write'

      # See info about your body temperature in Google Fit. I consent to Google sharing my body temperature information with this app.
      AUTH_FITNESS_BODY_TEMPERATURE_READ = 'https://www.googleapis.com/auth/fitness.body_temperature.read'

      # Add to info about your body temperature in Google Fit. I consent to Google using my body temperature information with this app.
      AUTH_FITNESS_BODY_TEMPERATURE_WRITE = 'https://www.googleapis.com/auth/fitness.body_temperature.write'

      # See your heart rate data in Google Fit. I consent to Google sharing my heart rate information with this app.
      AUTH_FITNESS_HEART_RATE_READ = 'https://www.googleapis.com/auth/fitness.heart_rate.read'

      # Add to your heart rate data in Google Fit. I consent to Google using my heart rate information with this app.
      AUTH_FITNESS_HEART_RATE_WRITE = 'https://www.googleapis.com/auth/fitness.heart_rate.write'

      # See your Google Fit speed and distance data
      AUTH_FITNESS_LOCATION_READ = 'https://www.googleapis.com/auth/fitness.location.read'

      # Add to your Google Fit location data
      AUTH_FITNESS_LOCATION_WRITE = 'https://www.googleapis.com/auth/fitness.location.write'

      # See info about your nutrition in Google Fit
      AUTH_FITNESS_NUTRITION_READ = 'https://www.googleapis.com/auth/fitness.nutrition.read'

      # Add to info about your nutrition in Google Fit
      AUTH_FITNESS_NUTRITION_WRITE = 'https://www.googleapis.com/auth/fitness.nutrition.write'

      # See info about your oxygen saturation in Google Fit. I consent to Google sharing my oxygen saturation information with this app.
      AUTH_FITNESS_OXYGEN_SATURATION_READ = 'https://www.googleapis.com/auth/fitness.oxygen_saturation.read'

      # Add info about your oxygen saturation in Google Fit. I consent to Google using my oxygen saturation information with this app.
      AUTH_FITNESS_OXYGEN_SATURATION_WRITE = 'https://www.googleapis.com/auth/fitness.oxygen_saturation.write'

      # See info about your reproductive health in Google Fit. I consent to Google sharing my reproductive health information with this app.
      AUTH_FITNESS_REPRODUCTIVE_HEALTH_READ = 'https://www.googleapis.com/auth/fitness.reproductive_health.read'

      # Add info about your reproductive health in Google Fit. I consent to Google using my reproductive health information with this app.
      AUTH_FITNESS_REPRODUCTIVE_HEALTH_WRITE = 'https://www.googleapis.com/auth/fitness.reproductive_health.write'

      # See your sleep data in Google Fit. I consent to Google sharing my sleep information with this app.
      AUTH_FITNESS_SLEEP_READ = 'https://www.googleapis.com/auth/fitness.sleep.read'

      # Add to your sleep data in Google Fit. I consent to Google using my sleep information with this app.
      AUTH_FITNESS_SLEEP_WRITE = 'https://www.googleapis.com/auth/fitness.sleep.write'
    end
  end
end
