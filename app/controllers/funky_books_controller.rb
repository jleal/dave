class FunkyBooksController < ApplicationController

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


  #==> Callbacks
  def index_success(funky_books)
    @funky_books = funky_books

    respond_to do |format|
      format.html { render 'index'}
      format.json { render json: @funky_books }
    end   
  end

  def show_success(funky_book)
    @funky_book = funky_book

    respond_to do |format|
      format.html { render 'show'}
      format.json { render json: @funky_book }
    end
  end  

  def new_success(funky_book)
    @funky_book = funky_book

    respond_to do |format|
      format.html { render 'new'}
      format.json { render json: @funky_book }
    end
  end  

  def edit_success(funky_book)
    @funky_book = funky_book

    respond_to {|format| render 'edit'}
  end  

  def create_success(funky_book)
    @funky_book = funky_book

    respond_to do |format|
      format.html { redirect_to @funky_book, notice: 'Book was successfully created.' }
      format.json { render json: @funky_book, status: :created, location: @funky_book }
    end
  end 

  def create_failed(funky_book)
    @funky_book = funky_book

    respond_to do |format|
      format.html { render action: "new" }
      format.json { render json: @funky_book.errors, status: :unprocessable_entity }      
    end
  end   

  def update_success(funky_book)
    @funky_book = funky_book

    respond_to do |format|
      format.html { redirect_to @funky_book, notice: 'Book was successfully updated.' }
      format.json { head :no_content }      
    end
  end

  def update_failed(funky_book)
    @funky_book = funky_book

    respond_to do |format|
      format.html { render action: "edit" }
      format.json { render json: @funky_book.errors, status: :unprocessable_entity }      
    end
  end    

  def destroy_success(funky_book)
    @funky_book = funky_book

    respond_to do |format|
      format.html { redirect_to funky_books_url }
      format.json { head :no_content }
    end
  end  

  private

  def target
    FunkyBookCrudTarget.new(self)
  end
end
