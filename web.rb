require 'sinatra'
require "sinatra/reloader"

@@status = "idle"

get '/' do
	status = @@status
	@@status = 'idle'
	status
end

get '/peek' do
 "Peek: " + @@status
end	

get '/:state' do |state|
	@@status = state if ['up', 'down', 'idle'].include? state
end

