class UsersController < ApplicationController
  def index
    @users = User.all
    render :json => @users
  end

  def show
    user = User.find(params[:id])
    render :json => user
  end

  def create
    user = User.new(user_params)
    if user.save
      render :json => user
    else
      render :json => user.errors.full_messages, :status => :unprocessable_entity
    end
  end

  def update
    user = User.find(params[:id])
    user.update_attributes!(user_params)
    render :json => user
  end

  def destroy
    user = User.find(params[:id])
    user.delete
    render :json => {}
  end

  private

  def user_params
    params.permit(:username)
  end
end
