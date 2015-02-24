class BooksController < ApplicationController

  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(book_params)
      flash[:success]= "Zaktualizowano dane"
      redirect_to request.referer
    else
      flash[:error]= "Aktualizacja zakończona niepowodzeniem"
      render 'static_pages/table' if current_page(table_path)
      render 'static_pages/mobile' if current_page(mobile_path)
    end
  end

  def book_params
    params.require(:book).permit(:state)
  end
end
