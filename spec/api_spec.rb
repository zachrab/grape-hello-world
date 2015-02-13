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
        expect(last_response.status).to eq 200
        expect(last_response.body).to eq({Hello: 'World!'}.to_json)
      end
    end
  end
end