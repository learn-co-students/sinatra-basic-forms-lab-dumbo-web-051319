require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do

    erb :index
  end


  get '/new' do
    erb :create_puppy
  end

  # get '/puppy/:id' do
  #   @puppy = Puppy.find(params[:id])
  #   erb :display_puppy
  # end


  post '/puppy' do
    @name = params[:name]
    @age = params[:age]
    @breed = params[:breed]
    erb :display_puppy

    # @new_puppy =  Puppy.create(params)
    # redirect to "/puppy/#{@new_puppy.id}"
  end

# post '/puppy/:new' do
#   erb :display_puppy
# end





end
