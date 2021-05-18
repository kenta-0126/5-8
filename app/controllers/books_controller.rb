class BooksController < ApplicationController
  def index
    @book = Book.all
  end
  
  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to :action => 'show'
  end
  
  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
