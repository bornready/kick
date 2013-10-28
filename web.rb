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

get '/set' do
	erb :index
end	


post '/:state' do |state|
	@@status = state if ['up', 'down', 'idle'].include? state
	redirect "/set?s=#{state}"
end

