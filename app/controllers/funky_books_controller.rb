class FunkyBooksController < ApplicationController
  include FunkyBooksControllerDelegate

  #==> Actions
  def index
    target.index_for
  end

  def show
    target.show_for(params[:id])
  end

  def new
    target.new_for
  end  

  def edit
    target.edit_for(params[:id])
  end  

  def create
    target.create_for(params[:funky_book])
  end  

  def update
    target.update_for(params[:id], params[:funky_book])
  end  

  def destroy
    target.destroy_for(params[:id])
  end

end
