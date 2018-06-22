class UsersController < ApplicationController
  load_and_authorize_resource

  def show; end

  def update
    if user.update(user_params)
      redirect_to user
    else
      render :edit
    end
  end

  private

  attr_reader :user

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end
