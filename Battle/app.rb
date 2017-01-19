require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    if !params[:attacker]
      $player_1 = Player.new(params[:player_1_name])
      $player_2 = Player.new(params[:player_2_name])
    end
    $attacker = params[:attacker]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    if $attacker
      $player_1.attack($player_2)
    end
    @p1_points = $player_1.points
    @p2_points = $player_2.points
    @attacker = $attacker
    erb :play
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
