class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def create
    # @artist = Artist.find(params[:artist_id])

  end

  def new
    @album = Album.new

  end

  def destroy
  end

  def edit
  end

  def update
  end

  def show
  end
end
