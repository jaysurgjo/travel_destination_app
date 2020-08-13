class UsersController < ApplicationController

get '/signup' do
  if !logged_in?
    erb :'user/signup'
  else
    redirect_to_login
  end
end

post '/signup' do
  @user = User.create(username:params[:username], password:params[:password])
  session[:user_id] = @user.id
  redirect_to_home
end

get '/login' do
    if logged_in?
      redirect_to_home
    else
    erb :index
  end
end

post '/login' do
  @user = User.find_by(username:params[:username])
  if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      return redirect to '/destinations/new'
  end
  redirect to '/login'
end

get '/logout' do
  session.clear
    erb :'./index'
    end
  end
