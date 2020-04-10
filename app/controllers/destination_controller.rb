class DestinantionController < ApplicationController
  get '/destinations' do
      ""
    end

    get '/destination/:id' do
      "Destination #{params[:id]} Show"
    end
   end
