require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    if !params[:attacker]
      $player_1_name = params[:player_1_name]
      $player_2_name = params[:player_2_name]
    end
    $attacker = params[:attacker]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1_name
    @player_2_name = $player_2_name
    @p1_points = 60
    @p2_points = 60
    @attacker = $attacker
    erb :play
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
