class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.integer :year
      t.string :hometown
   
      t.timestamps
    end
  end
end
