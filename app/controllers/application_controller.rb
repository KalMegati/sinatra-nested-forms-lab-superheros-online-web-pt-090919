require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
      erb :newteam
    end
    
    post '/teams' do
      @team = Team.new(params["team"])
      @member1 = Superhero.new(params["member1"])
      @member2 = Superhero.new(params["member2"])
      @member3 = Superhero.new(params["member3"])
      erb :teams
    end


end
