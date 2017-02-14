class UsersController < ApplicationController
# index, show, new, edit, create, update and destroy

  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = Article.find(params[:id])
  end

  def create
    @user = User.new(user_params)#(params.require(:user).permit(:name))

    if @user.save
      redirect_to @user
    else
      render 'new'
    end
    # render plain: params[:user].inspect
  end

  private
    def user_params
      params.require(:user).permit(:name)
    end
end
