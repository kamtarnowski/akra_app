class StaticPagesController < ApplicationController
  def table
    @books = Book.page params[:page]
    respond_to do |format|
      format.html # index.html.erb
      ajax_respond format, :section_id => "page"
    end
  end

  def mobile
  end
end
