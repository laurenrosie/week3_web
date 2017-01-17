require 'sinatra'
require 'shotgun'


get '/' do
  "hello!"
end

get '/secret'do
  "There is always money in the banana stand"
end

get '/teeth' do
  "Sugar is cancer"
end

get '/sleep' do
  "Go to bed"
end

get '/random-cat' do
    @name = ["Amigo", "Oscar", "Viking"].sample
    erb(:index)
end

get '/named-cat' do
    p params
    @name = params[:name]
    erb(:index)
end
