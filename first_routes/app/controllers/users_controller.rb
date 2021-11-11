class UsersController < ApplicationController
    def index
        # render plain: "I'm in the index action!"
        users = User.all
        render json: users
        # render json: params
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
        user = User.new(params.require(:user).permit(:name, :email))
        if user.save!
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

#     {
#   "fav_food": "pizza",
#   "controller": "users",
#   "action": "create"
# }

    def edit
    end
end