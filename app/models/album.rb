class Album < ApplicationRecord
  belongs_to :artist #@album.artist.name
  has_many :songs
end
