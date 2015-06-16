require 'sinatra' # make sinatra app 

get "/" do # if someone makes GET request, make get request to root folder of application
	puts params # shows up in terminal
	"Hello World!" # response to request
end

# get "/kevin" do # new route for /kevin
# 	"Hello Kevin!"
# end

# get "/hello/:name" do		#wild card :name
# 	name = params['name']
# 	"Hello #{name.capitalize}!"
# end

get "/hello/:name" do 
	@name = params['name']
	erb :name
end 