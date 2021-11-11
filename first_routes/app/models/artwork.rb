# == Schema Information
#
# Table name: artworks
#
#  id        :bigint           not null, primary key
#  image_url :string           not null
#  title     :string           not null
#  artist_id :integer          not null
#
# Indexes
#
#  index_artworks_on_artist_id            (artist_id)
#  index_artworks_on_title_and_artist_id  (title,artist_id) UNIQUE
#
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
