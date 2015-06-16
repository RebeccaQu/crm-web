require 'sinatra'

get '/' do				# Created route: allows you to match request method and path
	erb :index
end

