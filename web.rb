require 'sinatra'
require "sinatra/reloader"

@@status = "down"

get '/' do
	@@status
end

get '/:state' do |state|
	@@status = state
end

