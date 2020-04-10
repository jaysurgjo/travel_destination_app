class UsersController < ApplicationController

get '/users/:id' do
  if !logged_in?
    redirect '/destinations'
  end

get '/signup' do
  if !session[:user_id]
    erb :'users/new'
  else
    redirect to '/destinations'
  end
end

post '/signup' do
  ""
end

get '/login' do
  ""
end

post '/login' do
  ""
  end
end

get '/logout' do
  ""
  end
end
