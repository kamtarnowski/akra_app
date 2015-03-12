class StaticPagesController < ApplicationController

  def table
    @per_page = params[:per_page] || 10
    @available_params = [params[:find_by], params[:page]]

    @books = case params[:find_by]
               when 'author'
                 Book.order(:author)
               when 'author_rev'
                 Book.order(author: :desc)
               when 'title'
                 Book.order(:title)
               when 'title_rev'
                 Book.order(title: :desc)
               when 'state'
                 Book.order(:state)
               when 'state_rev'
                 Book.order(state: :desc)
               else
                 Book.order(created_at: :desc)
             end

    @books = @books.page(params[:page]).per(@per_page)

  end

  def mobile
  end

  # protected
  #
  # def set_content_type
  #   params[:content_type] ||= "/?per_page=20"
  # end
end
