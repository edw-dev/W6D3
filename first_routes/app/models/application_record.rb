class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end


# def create
#   user = User.new(params.require(:user).permit(:name, :email))
#   if user.save
#     render json: user
#   else
#     render json: user.errors.full_messages, status: :unprocessable_entity
#   end
# end