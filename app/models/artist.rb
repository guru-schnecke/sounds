class Artist < ApplicationRecord
    validates :name, presence: true, length: { minimum: 3}
    validates :location, presence: true, length: { minimum: 3}
    validates :hometown, presence: true, length: { minimum: 3}
    validates :age, presence: true, length: { maximum: 3}

    has_many :albums # @artist.album
end
