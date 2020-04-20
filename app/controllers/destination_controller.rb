class DestinantionController < ApplicationController
  get "/destinations" do
    @destinations = Destination.all
    erb :'destinations/index'
  end

  get "/destinations/new" do
    ""
  end

  get "/destinations/:id/edit" do
    ""
  end

  post "/destinations/:id" do
    ""
  end

  post "/destinations" do
    ""
  end
end
