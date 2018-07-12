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
    "Goodbye, #{params[:name]}"
  end

  get '/multiply/:num1/:num2' do
    "#{params[:num_1].to_i * params[:num_2].to_i}"
  end
end
