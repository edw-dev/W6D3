class ArtworksController < ApplicationController
    def index
        artworks = Artwork.all
        render json: artworks
        # render json: params
    end

    def show
        render json: Artwork.find(params[:id])
    end

    def update
        old = Artwork.find(params[:id])
        if old.update(user_params)
            render json: old
        else
            render json: old.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        old = Artwork.find_by(id: params[:id])
        if old
            old.destroy 
            render json: old
        else
            render json: "doesnt exist"
        end
    end

    def create
        user = Artwork.new(user_params)  
        debugger    
        #user = User.new(params.require(:user).permit(:name, :email))
        if user.save!
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    private
    def user_params
        params.require(:artworks).permit(:title, :image_url, :artist_id)
    end
    # title           | image_url | artist_id
end