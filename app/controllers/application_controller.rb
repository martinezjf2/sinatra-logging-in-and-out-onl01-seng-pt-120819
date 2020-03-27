require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
   
  end

  get '/account' do
    erb :error
  end

  get '/logout' do
    # sessions.clear
    redirect '/'
  end


end

