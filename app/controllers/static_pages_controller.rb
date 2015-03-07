class StaticPagesController < ApplicationController

  def table
    @per_page = params[:per_page] || 10
    @books = Book.page(params[:page]).per(@per_page)
  end

  def mobile
  end

  protected

  def set_content_type
    params[:content_type] ||= "/?per_page=20"
  end
end
