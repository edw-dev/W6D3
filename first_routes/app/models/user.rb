# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_username  (username)
#
class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true 

    has_many :artworks, 
        primary_key: :id, 
        foreign_key: :artist_id,
        class_name: :Artwork,
        dependent: :destroy

        # set of artworks that have been shared with that viewer
    has_many :artwork_shares, 
        primary_key: :id, 
        foreign_key: :viewer_id,
        class_name: :ArtworkShare,
        dependent: :destroy

      #one artist can have shared many pieces of art
    has_many :shared_artworks, 
        through: :artwork_shares,
        source: :artwork,
        dependent: :destroy
end


  #dependent destroy on the has_many associations