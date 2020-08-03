class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :destroy, :update]

  def index
    # Artist.find()
    @artists = Artist.all
  end

  def show
    # @artist = Artist.find(params[:id])
    
  end


  def edit
    # @artist = Artist.find(params[:id])
  end

  def update
    if @artist.update(artist_params)
      redirect_to artists_path
    else
      render :edit
    end
  end

  def new
    @artist = Artist.new
  end

  def create
    # Artist.create()
    @artist = Artist.new(artist_params)
    if @artist.save
      # after save redirect to localhost:3000/
      redirect_to artists_path
    else
      # render artist new page
      render :new
    end
  end

  def destroy
    if @artist.destroy
      redirect_to artists_path
    else
      render :index
    end
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :hometown, :location, :year,:age)
  end
 
end
