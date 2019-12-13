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
    @number = params[:number].to_i
    @phrase = params[:phrase] + "\n"
    @result = @phrase * @number
  end
  
  # concatenates the words and adds a period
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  
  # operation
  get '/:operation/:number1/:number2' do
    binding.pry
    case operation = params[:operation]
    when "add"
    
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @result = 
  end
end