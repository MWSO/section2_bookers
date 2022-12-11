class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new
    book.save
    redirect_to "book_path"
  end

  def index
  end

  def show
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:本のタイトル, :感想)
  end
end
