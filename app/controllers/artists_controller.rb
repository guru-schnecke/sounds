class ArtistsController < ApplicationController
  def index
    # Artist.find()
    @artists =Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end


  def edit
  
  end
  def update
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
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :hometown, :location, :year,:age)
  end
 
end
