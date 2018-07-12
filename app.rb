require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do
    @name = params[:id]
    "Goodybye #{@name}"
  end

  get '/multiply/:num1/:num2' do
    @num_1 = params[:num_1]
    @num_2 = params[:num_2]
    @product = @num1 X @num_2
    "#{@product}"
  end
end
