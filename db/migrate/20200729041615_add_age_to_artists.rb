class AddAgeToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :age, :integer
  end
end
