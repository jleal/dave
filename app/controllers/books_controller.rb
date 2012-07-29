
class BooksController < ApplicationController
  include BooksControllerDelegate
  include FunkyBooksControllerDelegate

  #==> Actions
  def index
    target(params[:controller_type]).index_for
  end

  def show
    target(params[:controller_type]).show_for(params[:id])
  end

  def new
    target(params[:controller_type]).new_for
  end  

  def edit
    target(params[:controller_type]).edit_for(params[:id])
  end  

  def create
    target(params[:controller_type]).create_for(params[:funky_book])
  end  

  def update
    debugger
    target(params[:controller_type]).update_for(params[:id], params[:funky_book])
  end  

  def destroy
    target(params[:controller_type]).destroy_for(params[:id])
  end

end
