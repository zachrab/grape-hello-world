require 'grape'
require 'json'
class HelloWorldAPI < Grape::API
	prefix 'api'
	version 'v1'
	format :json

	get 'hello_world' do
		{Hello: 'World!'}
	end
end