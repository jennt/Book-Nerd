class UsersController < ApplicationController
# index, show, new, edit, create, update and destroy

  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def create
    @user = User.new(user_params)#(params.require(:user).permit(:name))
    @user.save
    redirect_to @user
    # render plain: params[:user].inspect
  end

  private
    def user_params
      params.require(:user).permit(:name)
    end
end