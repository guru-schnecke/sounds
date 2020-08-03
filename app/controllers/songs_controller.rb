class SongsController < ApplicationController
  before_action :new_song, only: [:new, :create]
  before_action :set_song, only: [:show, :edit, :update]
  def index
    @songs = Song.all
  end

  def create
    @song = @album.songs.build(song_params)

    if @song.save
      redirect_to album_path(@album)
    else
      render :new
    end
  end

  def new
    # 
    @song = @album.songs.build
  end

  def update
  end

  def show
  end

  def edit
    @album = Album.find(params[:album_id])
  end

  def destroy
  end
  
  private
# 
  def new_song
    @album = Album.find(params[:album_id])
  end

  def set_song
    @song = Song.find(params[:id])
  end
  def song_params
    # why are you laughing pasti
    params.require(:song).permit(:name, :url, :album_id, artist_ids: [])
  end
end
