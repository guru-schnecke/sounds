class AddLocationToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :location, :string
  end
end
