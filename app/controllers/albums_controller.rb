class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def create
    @album = Album.new(album_params)
    artist = Artist.find(params[:artist_id])
    
    @album["artist_id"] = artist

  end

  def new
    @album = Album.new
    @artist = Artist.find(params[:artist_id])
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def show
  end

  private

  def album_params
    params.require(:album).permit(:name, :cover, :year, :number_of_songs, :artist_id)
  end

end
