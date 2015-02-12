require 'spec_helper'

describe HelloWorldAPI do
  include Rack::Test::Methods

  def app
    HelloWorldAPI
  end

  describe HelloWorldAPI do
    describe 'GET /api/v1/hello_world' do
      it 'returns JSON with Hello World!' do
        get "/api/v1/hello_world"
        last_response.status.should == 200
        JSON.parse(last_response.body)["Hello"].should == "World!"
      end
    end
  end
end