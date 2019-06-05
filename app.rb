require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do

        erb :index
    end

    get '/new' do

        erb :create_puppy   
    end

    post '/puppy' do
            # puts params
        Puppy.new(params[:name], params[:breed], params[:age])
        # binding.pry
        erb :display_puppy
    
      end

    #   get '/puppy' do
        
    #     erb :create_puppy
    #   end
end
