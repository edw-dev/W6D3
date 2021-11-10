class UsersController < ApplicationController
    def index
        # render plain: "I'm in the index action!"
        render User.all 
    end

    def show
        # user = User.find_by(id: params[:id])

        render User 
    end

    def update
        user = User.
    end

    def destroy
    end

    def create
        render json: params
    end

#     {
#   "fav_food": "pizza",
#   "controller": "users",
#   "action": "create"
# }

    def edit
    end
end