class StaticPagesController < ApplicationController
  def table
    @books = Book.page params[:page]
  end

  def mobile
  end
end
