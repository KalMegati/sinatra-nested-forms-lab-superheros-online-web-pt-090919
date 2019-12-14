require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
      erb :newteam
    end
    
    post '/teams' do
      @team = Team.new(params["team"])
      
      erb :teams
    end


end
