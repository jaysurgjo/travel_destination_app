require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "password_security"
  end

  get '/' do
     if logged_in?
    return redirect_to_home
 end
    erb :"index"
  end

  helpers do

   def user
      User.find(session[:user_id])
    end

    def redirect_to_home
      redirect to "/destinations/new"
    end

    def logged_in?
      !!session[:user_id]
    end

    def redirect_to_login
      if !logged_in?
        erb :"index"
      end
  end
end
end
