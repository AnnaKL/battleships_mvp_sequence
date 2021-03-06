require 'sinatra/base'

class BattleShips < Sinatra::Base

  set :views, Proc.new { File.join(root, "..", "views")}

  get '/' do
    erb :index
  end

  get '/New_Game' do
    @visitor = params[:name]
    erb :New_Game
  end

  get '/welcome' do
    erb :welcome
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end