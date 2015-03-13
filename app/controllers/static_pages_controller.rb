class StaticPagesController < ApplicationController

  def table
    @per_page = params[:per_page] || 20

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

  def table_search
    @per_page = params[:per_page] || 20

    @books = Book.where(title: params[:search][:inquiry]) + Book.where(author: params[:search][:inquiry])

    # @books = case params[:find_by]
    #            when 'author'
    #              Book.order(:author)
    #            when 'author_rev'
    #              Book.order(author: :desc)
    #            when 'title'
    #              Book.order(:title)
    #            when 'title_rev'
    #              Book.order(title: :desc)
    #            when 'state'
    #              Book.order(:state)
    #            when 'state_rev'
    #              Book.order(state: :desc)
    #            else
    #              Book.order(created_at: :desc)
    #          end

    @books = Kaminari.paginate_array(@books).page(params[:page]).per(@per_page)

  end
end
