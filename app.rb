require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name].reverse
    # puts @name
  end
  
  get "/square/:number" do
    @square = (params[:number].to_i**2).to_s
    p @square
    # puts @square would return 16 #=> nil
  end
  
  # get '/say/:number/:phrase' do
  # end
  
  # get '/say/:word1/:word2/:word3/:word4/:word5' do
  # end
  
  # get '/:operation/:number1/:number2' do
  # end
  
  
end