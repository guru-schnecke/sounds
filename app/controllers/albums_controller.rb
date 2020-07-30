class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def create
    # Ebere Basic way of doing this
    #  would be helpful if you dont know
    #  what to do in rails
    # @album = Album.new(album_params)
    # artist = Artist.find(params[:artist_id])
    # @album["artist_id"] = artist.id
    # End of Eberes Basic way

    # the rails way of doing this is much more 
    # SIMPLER!!!!!!!!!!!!
    @artist = Artist.find(params[:artist_id])
    @album = @artist.albums.build(album_params)
    # End of rails way
    if @album.save
      redirect_to artist_path(@artist)
    else
      render :new
    end

  end

  def new
    @album = Album.new
    @artist = Artist.find(params[:artist_id])
  end

  def destroy
  end

  def edit
    @artist = Artist.find(params[:artist_id])
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    artist = Artist.find(params[:artist_id])
    # End of rails way
    if @album.update(album_params)
      redirect_to artist_path(artist)
    else
      render :edit
    end
  end

  def show
  end

  private

  def album_params
    params.require(:album).permit(:name, :cover, :year, :number_of_songs, :artist_id)
  end

end
