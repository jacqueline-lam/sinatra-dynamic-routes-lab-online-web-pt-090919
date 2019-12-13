require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name].reverse
    # puts @name
  end
  
  get "/square/:number" do
    @square = (params[:number].to_i**2).to_s
    # puts @square would return 16 #=> nil; p @square could work
  end
  
  # accepts a number and a phrase and returns that phrase in 
  # a single string the number of times given
  get '/say/:number/:phrase' do
    binding.pry
    # @number = params[:number].to_i
    # @phrase = params[:phrase] + "\n"
    # @result = @phrase * @number
  end
  
  # get '/say/:word1/:word2/:word3/:word4/:word5' do
  # end
  
  # get '/:operation/:number1/:number2' do
  # end
  
  
end