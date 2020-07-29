class ArtistsController < ApplicationController
  def index
    # Artist.find()
    @artists =Artist.all
  end

  def show
  end

  def destroy
  end

  def update
  end

  def new
  end
end
