class ArtistTagsController < ApplicationController
  before_action :set_artist, only: %i[new create]

  def new
    @artist_tag = ArtistTag.new
  end

  def create
    @artist_tag = ArtistTag.new(artist_tag_params)
    @artist_tag.artist = @artist

    if @artist_tag.save
      # redirect_to artist_path(@artist)
      redirect_to @artist
    else
      render :new
    end
  end

  def destroy
  end

  private

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def artist_tag_params
    params.require(:artist_tag).permit(:tag_id)
  end
end
