class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def update
    @book = Book.find(params[:id])
  end
end
