require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/switch-turn' do
    @game.switch_turns
    @game.over? ? redirect('/result') : redirect('/play')
  end

  get '/attack' do
    @game.attack(@game.current_opponent)
    erb :attack
  end

  get '/result' do
    erb(:result)
  end

  run! if app_file == $0
end
