class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end

  def index
    @books = Book.all
  end
  
  def show
    @book = Book.find(book_params[:id])
  end

  def edit

  end

  def destroy

  end
  private
    def book_params
      params.require(:book).permit(:title, :body, :user_id)
    end

end
