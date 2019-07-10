class AlbumsController < ApplicationController
  before_action :set_artist

  def new
    @album = Album.new
  end

  def create
    byebug
    # STRONG PARAMS
    @album = Album.new(album_params)
    @album.artist = @artist

    if @album.save
      redirect_to @artist
    else
      render :new
    end
  end

  private

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def album_params
    params.require(:album).permit(:title, :image_url)
  end
end
