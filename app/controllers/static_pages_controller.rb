class StaticPagesController < ApplicationController

  def table
    @per_page = params[:per_page] || 10
    @books = Book.page(params[:page]).per(@per_page)
    respond_to do |format|
      format.html
      ajax_respond format, :section_id => "page"
    end
  end

  def mobile
  end

  protected

  def set_content_type
    params[:content_type] ||= "/?per_page=20"
  end
end
