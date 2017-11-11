class UsersController < ApplicationController

  def new
  end



    def create
      user = User.new(user_params)
      if user.save
        session[:user_id] = user.id
        redirect_to '/customers#index'
      else
        redirect_to '/signup'
      end
    end



private
  def user_params
    params.require(:user).permit(:employee_name, :email, :password, :password_confirmation)
  end
end
