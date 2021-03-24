class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    render json: @user.as_json(include: [:followers, :following])
  end
end
