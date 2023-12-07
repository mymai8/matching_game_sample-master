class UsersController < ApplicationController

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(useparams)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
