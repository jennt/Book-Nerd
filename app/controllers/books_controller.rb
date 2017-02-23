class BooksController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @books = @user.books.create(book_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @book = @user.books.find(params[:id])
    @book.destroy
    redirect_to user_path(@user)
  end

  private
    def book_params
      params.require(:book).permit(:title, :read, :user_id)
    end

end
