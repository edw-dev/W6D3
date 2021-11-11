class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
        # render json: params
    end

    def show
        render json: User.find(params[:id])
    end

    def update
        old = User.find(params[:id])
        if old.update(user_params)
            render json: old
        else
            render json: old.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        old = User.find_by(id: params[:id])
        if old
            old.destroy 
            render json: old
        else
            render json: "doesnt exist"
        end
    end

    def create
        user = User.new(user_params)  
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
        params.require(:user).permit(:username)
    end
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