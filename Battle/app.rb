require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do
    if !params[:attacker]
      $game = Game.new(params[:player_1_name], params[:player_2_name])
    end
    $attacker = params[:attacker]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.player1.name
    @player_2_name = $game.player2.name
    if $attacker
      $game.attack($game.player2)
    end
    @p1_points = $game.player1.points
    @p2_points = $game.player2.points
    @attacker = $game.attacker
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
