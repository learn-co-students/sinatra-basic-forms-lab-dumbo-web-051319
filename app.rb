require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    post '/puppy' do
        # binding.pry
        # @puppy = Puppy.create(params[:name], params[:breed], params[:age])

        @name = params[:name]
        @age = params[:age]
        @breed = params[:breed]
        erb :display_puppy
    end

end
