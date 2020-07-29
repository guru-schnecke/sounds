class ArtistsController < ApplicationController
  def index
    # Artist.find()
    @artists =Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def destroy
  end

  def update
  end

  def new
  end

  def edit
  
  end
end
