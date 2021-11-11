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
        class_name: :Artwork
    
    has_many :viewers, 
        primary_key: :id, 
        foreign_key: :viewer_id,
        class_name: :ArtworkShare

    # set of artworks that have been shared with that user
    has_many :shared_artworks, 
        through: :artwork_shares,
        source: :artwork
end

#this create method is built into ApplicationRecord
# def create
#     user = User.new(params.require(:user).permit(:name, :email))
#     if user.save
#       render json: user
#     else
#       render json: user.errors.full_messages, status: :unprocessable_entity
#     end
#   end
