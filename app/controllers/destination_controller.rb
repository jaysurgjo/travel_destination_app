class DestinantionController < ApplicationController
  get "/destinations" do
    @destinations = Destination.all
    puts "dessstt#{@destinations.inspect}"
    erb :'destinations/index'
  end

  get "/destinations/new" do
    erb :'destinations/new'
  end

  get "/destinations/:id/edit" do
    @destination = Destination.find(params[:id])
    erb :'destinations/edit'
  end

  post "/destinations/:id" do
    @destination = Destination.find(params[:id])
    if (@destination.update(name: params[:name]))
      redirect to "/destinations/#{@destination.id}"
    end
  end

  get "/destinations/:id" do
    @destination = Destination.find(params[:id])
    erb :'destinations/show'
  end

  post "/destinations" do
    @destination = Destination.create(name: params[:name], user_id: session[:user_id])
    redirect to "/destinations/#{@destination.id}"
  end
end
