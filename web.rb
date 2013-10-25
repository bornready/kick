require 'sinatra'
require "sinatra/reloader"

@@status = "down"

get '/' do
	@@status
end

get '/:state' do |state|
	@@status = state if ['up', 'down', 'idle'].include? state
	redirect '/'
end

