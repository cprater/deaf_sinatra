require 'pry'
require 'pry-nav'

get '/' do
  @grandma = params[:grandma]
  # grandma << @grandma
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  @grandma = params[:user_input]
  case @grandma
  when @grandma.upcase
    @grandma = "NO, NOT SINCE 1938!"
  when "I love ya, Grandma, but I've got to go."
    @grandma = "BYE DEAR!"
  else
    @grandma = "Speak up, kiddo!"
  end
  if request.xhr?
    erb :_grandma_response, layout: false
  else
    redirect to("/?grandma=#{@grandma}")
  end
end
