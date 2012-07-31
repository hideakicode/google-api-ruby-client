# encoding:utf-8

# Copyright 2010 Google Inc.
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


require 'spec_helper'

gem 'faraday', '~> 0.8.1'
require 'faraday'
require 'faraday/utils'
require 'multi_json'

gem 'signet', '~> 0.4.0'
require 'signet/oauth_1/client'

require 'google/api_client'
require 'google/api_client/version'

describe Google::APIClient do
  CLIENT = Google::APIClient.new

  after do
    # Reset client to not-quite-pristine state
    CLIENT.key = nil
    CLIENT.user_ip = nil
  end

  it 'should raise a type error for bogus authorization' do
    (lambda do
      Google::APIClient.new(:authorization => 42)
    end).should raise_error(TypeError)
  end

  it 'should not be able to retrieve the discovery document for a bogus API' do
    (lambda do
      CLIENT.discovery_document('bogus')
    end).should raise_error(Google::APIClient::TransmissionError)
    (lambda do
      CLIENT.discovered_api('bogus')
    end).should raise_error(Google::APIClient::TransmissionError)
  end

  it 'should raise an error for bogus services' do
    (lambda do
      CLIENT.discovered_api(42)
    end).should raise_error(TypeError)
  end

  it 'should raise an error for bogus services' do
    (lambda do
      CLIENT.preferred_version(42)
    end).should raise_error(TypeError)
  end

  it 'should raise an error for bogus methods' do
    (lambda do
      CLIENT.generate_request(42)
    end).should raise_error(TypeError)
  end

  it 'should not return a preferred version for bogus service names' do
    CLIENT.preferred_version('bogus').should == nil
  end

  describe 'with the prediction API' do
    before do
      CLIENT.authorization = nil
      # The prediction API no longer exposes a v1, so we have to be
      # careful about looking up the wrong API version.
      @prediction = CLIENT.discovered_api('prediction', 'v1.2')
    end

    it 'should correctly determine the discovery URI' do
      CLIENT.discovery_uri('prediction').should ===
        'https://www.googleapis.com/discovery/v1/apis/prediction/v1/rest'
    end

    it 'should correctly determine the discovery URI if :user_ip is set' do
      CLIENT.user_ip = '127.0.0.1'
      request = CLIENT.generate_request(
        :http_method => 'GET',
        :uri => CLIENT.discovery_uri('prediction', 'v1.2'),
        :authenticated => false
      )
      request.to_env(Faraday.default_connection)[:url].to_s.should === (
        'https://www.googleapis.com/discovery/v1/apis/prediction/v1.2/rest' +
        '?userIp=127.0.0.1'
      )
    end

    it 'should correctly determine the discovery URI if :key is set' do
      CLIENT.key = 'qwerty'
      request = CLIENT.generate_request(
        :http_method => 'GET',
        :uri => CLIENT.discovery_uri('prediction', 'v1.2'),
        :authenticated => false
      )
      request.to_env(Faraday.default_connection)[:url].to_s.should === (
        'https://www.googleapis.com/discovery/v1/apis/prediction/v1.2/rest' +
        '?key=qwerty'
      )
    end

    it 'should correctly determine the discovery URI if both are set' do
      CLIENT.key = 'qwerty'
      CLIENT.user_ip = '127.0.0.1'
      request = CLIENT.generate_request(
        :http_method => 'GET',
        :uri => CLIENT.discovery_uri('prediction', 'v1.2'),
        :authenticated => false
      )
      Addressable::URI.parse(
        request.to_env(Faraday.default_connection)[:url]
      ).query_values.should == {
        'key' => 'qwerty',
        'userIp' => '127.0.0.1'
      }
    end

    it 'should correctly generate API objects' do
      CLIENT.discovered_api('prediction', 'v1.2').name.should == 'prediction'
      CLIENT.discovered_api('prediction', 'v1.2').version.should == 'v1.2'
      CLIENT.discovered_api(:prediction, 'v1.2').name.should == 'prediction'
      CLIENT.discovered_api(:prediction, 'v1.2').version.should == 'v1.2'
    end

    it 'should discover methods' do
      CLIENT.discovered_method(
        'prediction.training.insert', 'prediction', 'v1.2'
      ).name.should == 'insert'
      CLIENT.discovered_method(
        :'prediction.training.insert', :prediction, 'v1.2'
      ).name.should == 'insert'
      CLIENT.discovered_method(
        'prediction.training.delete', 'prediction', 'v1.2'
      ).name.should == 'delete'
    end

    it 'should define the origin API in discovered methods' do
      CLIENT.discovered_method(
        'prediction.training.insert', 'prediction', 'v1.2'
      ).api.name.should == 'prediction'
    end

    it 'should not find methods that are not in the discovery document' do
      CLIENT.discovered_method(
        'prediction.bogus', 'prediction', 'v1.2'
      ).should == nil
    end

    it 'should raise an error for bogus methods' do
      (lambda do
        CLIENT.discovered_method(42, 'prediction', 'v1.2')
      end).should raise_error(TypeError)
    end

    it 'should raise an error for bogus methods' do
      (lambda do
        CLIENT.generate_request(CLIENT.discovered_api('prediction', 'v1.2'))
      end).should raise_error(TypeError)
    end

    it 'should correctly determine the preferred version' do
      CLIENT.preferred_version('prediction').version.should_not == 'v1'
      CLIENT.preferred_version(:prediction).version.should_not == 'v1'
    end

    it 'should return a batch path' do
      CLIENT.discovered_api('prediction', 'v1.2').batch_path.should_not be_nil
    end

    it 'should generate valid requests' do
      request = CLIENT.generate_request(
        :api_method => @prediction.training.insert,
        :parameters => {'data' => '12345'}
      )
      request.method.should == :post
      request.to_env(Faraday.default_connection)[:url].to_s.should ===
        'https://www.googleapis.com/prediction/v1.2/training?data=12345'
      request.headers.should be_empty
      request.body.should == ''
    end

    it 'should generate valid requests when repeated parameters are passed' do
      request = CLIENT.generate_request(
        :api_method => @prediction.training.insert,
        :parameters => [['data', '1'], ['data','2']]
      )
      request.method.should == :post
      request.to_env(Faraday.default_connection)[:url].to_s.should ===
        'https://www.googleapis.com/prediction/v1.2/training?data=1&data=2'
    end

    it 'should generate requests against the correct URIs' do
      request = CLIENT.generate_request(
        :api_method => @prediction.training.insert,
        :parameters => {'data' => '12345'}
      )
      request.to_env(Faraday.default_connection)[:url].to_s.should ===
        'https://www.googleapis.com/prediction/v1.2/training?data=12345'
    end

    it 'should generate requests against the correct URIs' do
      request = CLIENT.generate_request(
        :api_method => @prediction.training.insert,
        :parameters => {'data' => '12345'}
      )
      request.to_env(Faraday.default_connection)[:url].to_s.should ===
        'https://www.googleapis.com/prediction/v1.2/training?data=12345'
    end

    it 'should allow modification to the base URIs for testing purposes' do
      # Using a new client instance here to avoid caching rebased discovery doc
      prediction_rebase =
        Google::APIClient.new.discovered_api('prediction', 'v1.2')
      prediction_rebase.method_base =
        'https://testing-domain.example.com/prediction/v1.2/'
      request = CLIENT.generate_request(
        :api_method => prediction_rebase.training.insert,
        :parameters => {'data' => '123'}
      )
      request.to_env(Faraday.default_connection)[:url].to_s.should === (
        'https://testing-domain.example.com/' +
        'prediction/v1.2/training?data=123'
      )
    end

    it 'should generate OAuth 1 requests' do
      CLIENT.authorization = :oauth_1
      CLIENT.authorization.token_credential_key = '12345'
      CLIENT.authorization.token_credential_secret = '12345'
      request = CLIENT.generate_request(
        :api_method => @prediction.training.insert,
        :parameters => {'data' => '12345'}
      )
      request.headers.should have_key('Authorization')
      request.headers['Authorization'].should =~ /^OAuth/
    end

    it 'should generate OAuth 2 requests' do
      CLIENT.authorization = :oauth_2
      CLIENT.authorization.access_token = '12345'
      request = CLIENT.generate_request(
        :api_method => @prediction.training.insert,
        :parameters => {'data' => '12345'}
      )
      request.headers.should have_key('Authorization')
      request.headers['Authorization'].should =~ /^Bearer/
    end

    it 'should not be able to execute improperly authorized requests' do
      CLIENT.authorization = :oauth_1
      CLIENT.authorization.token_credential_key = '12345'
      CLIENT.authorization.token_credential_secret = '12345'
      result = CLIENT.execute(
        @prediction.training.insert,
        {'data' => '12345'}
      )
      result.response.status.should == 401
    end

    it 'should not be able to execute improperly authorized requests' do
      CLIENT.authorization = :oauth_2
      CLIENT.authorization.access_token = '12345'
      result = CLIENT.execute(
        @prediction.training.insert,
        {'data' => '12345'}
      )
      result.response.status.should == 401
    end

    it 'should not be able to execute improperly authorized requests' do
      (lambda do
        CLIENT.authorization = :oauth_1
        CLIENT.authorization.token_credential_key = '12345'
        CLIENT.authorization.token_credential_secret = '12345'
        result = CLIENT.execute!(
          @prediction.training.insert,
          {'data' => '12345'}
        )
      end).should raise_error(Google::APIClient::ClientError)
    end

    it 'should not be able to execute improperly authorized requests' do
      (lambda do
        CLIENT.authorization = :oauth_2
        CLIENT.authorization.access_token = '12345'
        result = CLIENT.execute!(
          @prediction.training.insert,
          {'data' => '12345'}
        )
      end).should raise_error(Google::APIClient::ClientError)
    end

    it 'should correctly handle unnamed parameters' do
      CLIENT.authorization = :oauth_2
      CLIENT.authorization.access_token = '12345'
      result = CLIENT.execute(
        @prediction.training.insert,
        {},
        MultiJson.dump({"id" => "bucket/object"}),
        {'Content-Type' => 'application/json'}
      )
      result.request.headers['Content-Type'].should == 'application/json'
    end
  end

  describe 'with the plus API' do
    before do
      CLIENT.authorization = nil
      @plus = CLIENT.discovered_api('plus')
    end

    it 'should correctly determine the discovery URI' do
      CLIENT.discovery_uri('plus').should ===
        'https://www.googleapis.com/discovery/v1/apis/plus/v1/rest'
    end

    it 'should find APIs that are in the discovery document' do
      CLIENT.discovered_api('plus').name.should == 'plus'
      CLIENT.discovered_api('plus').version.should == 'v1'
      CLIENT.discovered_api(:plus).name.should == 'plus'
      CLIENT.discovered_api(:plus).version.should == 'v1'
    end

    it 'should find methods that are in the discovery document' do
      # TODO(bobaman) Fix this when the RPC names are correct
      CLIENT.discovered_method(
        'plus.activities.list', 'plus'
      ).name.should == 'list'
    end

    it 'should define the origin API in discovered methods' do
      CLIENT.discovered_method(
        'plus.activities.list', 'plus'
      ).api.name.should == 'plus'
    end

    it 'should not find methods that are not in the discovery document' do
      CLIENT.discovered_method('plus.bogus', 'plus').should == nil
    end

    it 'should generate requests against the correct URIs' do
      request = CLIENT.generate_request(
        :api_method => @plus.activities.list,
        :parameters => {
          'userId' => '107807692475771887386', 'collection' => 'public'
        },
        :authenticated => false
      )
      request.to_env(Faraday.default_connection)[:url].to_s.should === (
        'https://www.googleapis.com/plus/v1/' +
        'people/107807692475771887386/activities/public'
      )
    end

    it 'should correctly validate parameters' do
      (lambda do
        CLIENT.generate_request(
          :api_method => @plus.activities.list,
          :parameters => {'alt' => 'json'},
          :authenticated => false
        )
      end).should raise_error(ArgumentError)
    end

    it 'should correctly validate parameters' do
      (lambda do
        CLIENT.generate_request(
          :api_method => @plus.activities.list,
          :parameters => {
            'userId' => '107807692475771887386', 'collection' => 'bogus'
          },
          :authenticated => false
        )
      end).should raise_error(ArgumentError)
    end
  end

  describe 'with the latitude API' do
    before do
      CLIENT.authorization = nil
      @latitude = CLIENT.discovered_api('latitude')
    end

    it 'should correctly determine the discovery URI' do
      CLIENT.discovery_uri('latitude').should ===
        'https://www.googleapis.com/discovery/v1/apis/latitude/v1/rest'
    end

    it 'should find APIs that are in the discovery document' do
      CLIENT.discovered_api('latitude').name.should == 'latitude'
      CLIENT.discovered_api('latitude').version.should == 'v1'
    end

    it 'should return a batch path' do
      CLIENT.discovered_api('latitude').batch_path.should_not be_nil
    end

    it 'should find methods that are in the discovery document' do
      CLIENT.discovered_method(
        'latitude.currentLocation.get', 'latitude'
      ).name.should == 'get'
    end

    it 'should define the origin API in discovered methods' do
      CLIENT.discovered_method(
        'latitude.currentLocation.get', 'latitude'
      ).api.name.should == 'latitude'
    end

    it 'should not find methods that are not in the discovery document' do
      CLIENT.discovered_method('latitude.bogus', 'latitude').should == nil
    end

    it 'should generate requests against the correct URIs' do
      request = CLIENT.generate_request(
        :api_method => 'latitude.currentLocation.get',
        :authenticated => false
      )
      request.to_env(Faraday.default_connection)[:url].to_s.should ===
        'https://www.googleapis.com/latitude/v1/currentLocation'
    end

    it 'should generate requests against the correct URIs' do
      request = CLIENT.generate_request(
        :api_method => @latitude.current_location.get,
        :authenticated => false
      )
      request.to_env(Faraday.default_connection)[:url].to_s.should ===
        'https://www.googleapis.com/latitude/v1/currentLocation'
    end

    it 'should not be able to execute requests without authorization' do
      result = CLIENT.execute(
        :api_method => 'latitude.currentLocation.get',
        :authenticated => false
      )
      result.response.status.should == 401
    end
  end

  describe 'with the moderator API' do
    before do
      CLIENT.authorization = nil
      @moderator = CLIENT.discovered_api('moderator')
    end

    it 'should correctly determine the discovery URI' do
      CLIENT.discovery_uri('moderator').should ===
        'https://www.googleapis.com/discovery/v1/apis/moderator/v1/rest'
    end

    it 'should find APIs that are in the discovery document' do
      CLIENT.discovered_api('moderator').name.should == 'moderator'
      CLIENT.discovered_api('moderator').version.should == 'v1'
    end

    it 'should find methods that are in the discovery document' do
      CLIENT.discovered_method(
        'moderator.profiles.get', 'moderator'
      ).name.should == 'get'
    end

    it 'should define the origin API in discovered methods' do
      CLIENT.discovered_method(
        'moderator.profiles.get', 'moderator'
      ).api.name.should == 'moderator'
    end

    it 'should not find methods that are not in the discovery document' do
      CLIENT.discovered_method('moderator.bogus', 'moderator').should == nil
    end

    it 'should return a batch path' do
      CLIENT.discovered_api('moderator').batch_path.should_not be_nil
    end

    it 'should generate requests against the correct URIs' do
      request = CLIENT.generate_request(
        :api_method => 'moderator.profiles.get',
        :authenticated => false
      )
      request.to_env(Faraday.default_connection)[:url].to_s.should ===
        'https://www.googleapis.com/moderator/v1/profiles/@me'
    end

    it 'should generate requests against the correct URIs' do
      request = CLIENT.generate_request(
        :api_method => @moderator.profiles.get,
        :authenticated => false
      )
      request.to_env(Faraday.default_connection)[:url].to_s.should ===
        'https://www.googleapis.com/moderator/v1/profiles/@me'
    end

    it 'should not be able to execute requests without authorization' do
      result = CLIENT.execute(
        'moderator.profiles.get',
        {},
        '',
        [],
        {:authenticated => false}
      )
      result.response.status.should == 401
    end
  end

  describe 'with the adsense API' do
    before do
      CLIENT.authorization = nil
      @adsense = CLIENT.discovered_api('adsense', 'v1')
    end

    it 'should correctly determine the discovery URI' do
      CLIENT.discovery_uri('adsense').should ===
        'https://www.googleapis.com/discovery/v1/apis/adsense/v1/rest'
    end

    it 'should find APIs that are in the discovery document' do
      CLIENT.discovered_api('adsense').name.should == 'adsense'
      CLIENT.discovered_api('adsense').version.should == 'v1'
    end

    it 'should return a batch path' do
      CLIENT.discovered_api('adsense').batch_path.should_not be_nil
    end

    it 'should find methods that are in the discovery document' do
      CLIENT.discovered_method(
        'adsense.reports.generate', 'adsense'
      ).name.should == 'generate'
    end

    it 'should not find methods that are not in the discovery document' do
      CLIENT.discovered_method('adsense.bogus', 'adsense').should == nil
    end

    it 'should generate requests against the correct URIs' do
      request = CLIENT.generate_request(
        :api_method => 'adsense.adclients.list',
        :authenticated => false
      )
      request.to_env(Faraday.default_connection)[:url].to_s.should ===
        'https://www.googleapis.com/adsense/v1/adclients'
    end

    it 'should generate requests against the correct URIs' do
      request = CLIENT.generate_request(
        :api_method => @adsense.adclients.list,
        :authenticated => false
      )
      request.to_env(Faraday.default_connection)[:url].to_s.should ===
        'https://www.googleapis.com/adsense/v1/adclients'
    end

    it 'should not be able to execute requests without authorization' do
      result = CLIENT.execute(
        :api_method => 'adsense.adclients.list',
        :authenticated => false
      )
      result.response.status.should == 401
    end

    it 'should fail when validating missing required parameters' do
      (lambda do
        CLIENT.generate_request(
          :api_method => @adsense.reports.generate,
          :authenticated => false
        )
      end).should raise_error(ArgumentError)
    end

    it 'should succeed when validating parameters in a correct call' do
      (lambda do
        CLIENT.generate_request(
          :api_method => @adsense.reports.generate,
          :parameters => {
            'startDate' => '2000-01-01',
            'endDate' => '2010-01-01',
            'dimension' => 'DATE',
            'metric' => 'PAGE_VIEWS'
          },
          :authenticated => false
        )
      end).should_not raise_error
    end

    it 'should fail when validating parameters with invalid values' do
      (lambda do
        CLIENT.generate_request(
          :api_method => @adsense.reports.generate,
          :parameters => {
            'startDate' => '2000-01-01',
            'endDate' => '2010-01-01',
            'dimension' => 'BAD_CHARACTERS=-&*(£&',
            'metric' => 'PAGE_VIEWS'
          },
          :authenticated => false
        )
      end).should raise_error(ArgumentError)
    end

    it 'should succeed when validating repeated parameters in a correct call' do
      (lambda do
        CLIENT.generate_request(
          :api_method => @adsense.reports.generate,
          :parameters => {
            'startDate' => '2000-01-01',
            'endDate' => '2010-01-01',
            'dimension' => ['DATE', 'PRODUCT_CODE'],
            'metric' => ['PAGE_VIEWS', 'CLICKS']
          },
          :authenticated => false
        )
      end).should_not raise_error
    end

    it 'should fail when validating incorrect repeated parameters' do
      (lambda do
        CLIENT.generate_request(
          :api_method => @adsense.reports.generate,
          :parameters => {
            'startDate' => '2000-01-01',
            'endDate' => '2010-01-01',
            'dimension' => ['DATE', 'BAD_CHARACTERS=-&*(£&'],
            'metric' => ['PAGE_VIEWS', 'CLICKS']
          },
          :authenticated => false
        )
      end).should raise_error(ArgumentError)
    end
  end

  describe 'with the Drive API' do
    before do
      CLIENT.authorization = nil
      @drive = CLIENT.discovered_api('drive', 'v1')
    end

    it 'should include media upload info methods' do
      @drive.files.insert.media_upload.should_not == nil
    end

    it 'should include accepted media types' do
      @drive.files.insert.media_upload.accepted_types.should_not be_empty
    end

    it 'should have an upload path' do
      @drive.files.insert.media_upload.uri_template.should_not == nil
    end

    it 'should have a max file size' do
      @drive.files.insert.media_upload.max_size.should_not == nil
    end
  end
end
