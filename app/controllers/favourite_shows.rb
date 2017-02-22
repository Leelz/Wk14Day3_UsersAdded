class Favourite_showController < ApplicationController

  before_action :authenticate_user!

    def index
     @favourite_shows = current_nuser.favourite_shows
     render( {json: @favourite_shows})
    end

  end