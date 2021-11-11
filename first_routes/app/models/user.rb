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