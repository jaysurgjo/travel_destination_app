class DestinantionController < ApplicationController
  get "/destinations" do
    @destinations = Destination.all
    erb :'destinations/index'
  end

  get "/destinations/new" do
    if @destinations.nil?
      "You must enter a valid location"
    else
      erb :'destinations/new'
    end
  end

  get "/destinations/:id/edit" do
    @destination = Destination.find(params[:id])
    erb :'destinations/edit'
  end

  post "/destinations/:id" do
    @destination = Destination.find(params[:id])
    erb :'destinations/show'
  end

  post "/destinations" do
    @destination = Destination.valid_params?(params)
    erb :'destinations'
  end
end
