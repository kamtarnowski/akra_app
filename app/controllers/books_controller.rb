class BooksController < ApplicationController

  def update
    @book = Book.find(params[:books][:book].keys)
    byebug
    if @book.each do |book|
      book.update(params[:books][:book][book.id.to_s].permit(:state))
    end
      flash[:success]= "Zaktualizowano dane"
      redirect_to request.referer
    else
      flash[:error]= "Aktualizacja zakończona niepowodzeniem"
      redirect_to :back
    end
  end
end
