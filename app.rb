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

get '/cat' do
  "<div style='border: 3px dashed red'>
  <img src='http://bit.ly/1eze8aE'>
  </div>"
end
