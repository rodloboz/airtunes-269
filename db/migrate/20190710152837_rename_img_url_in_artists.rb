class RenameImgUrlInArtists < ActiveRecord::Migration[5.2]
  def change
    rename_column :artists, :img_url, :image_url
  end
end
