require 'sinatra/base'
require_relative 'board'
require_relative 'cell'

class BattleShips < Sinatra::Base

  set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    erb :index
  end

  get '/new_game' do
    @name = params[:name]
    erb :new_game
  end

  get '/play' do
    @board = Board.new(size: 3, cell: Cell)
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
