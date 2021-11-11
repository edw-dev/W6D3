class Artwork < ApplicationRecord
    validates :artist_id, :title, :image_url, presence:true 
    validates :title, uniqueness: { scope: :artist_id,
    message: "This artist already has a piece with this title" }

    belongs_to :artist, 
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :User

    has_many :artwork_shares,
        primary_key: :id, 
        foreign_key: :artwork_id,
        class_name: :ArtworkShare


end