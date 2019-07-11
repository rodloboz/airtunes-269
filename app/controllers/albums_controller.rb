class AlbumsController < ApplicationController
  before_action :set_artist, except: :destroy

  def new
    @album = Album.new
  end

  def create
    # STRONG PARAMS
    @album = Album.new(album_params)
    @album.artist = @artist

    if @album.save
      redirect_to @artist
    else
      render :new
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy

    redirect_to @album.artist
  end

  private

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def album_params
    params.require(:album).permit(:title, :image_url)
  end
end
