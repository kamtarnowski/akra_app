class StaticPagesController < ApplicationController
  def table
    @books = Book.all
  end

  def mobile
  end
end
