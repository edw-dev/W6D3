class UsersController < ApplicationController
    def index
        # render plain: "I'm in the index action!"
        #users=User.all
        render json: params
    end

    def show
        # user = User.find_by(id: params[:id])

        render json: params
    end

    def update
        user = User
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