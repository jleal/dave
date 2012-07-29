class BooksController < ApplicationController

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
    target.create_for(params[:book])
  end  

  def update
    target.update_for(params[:id], params[:book])
  end  

  def destroy
    target.destroy_for(params[:id])
  end


  #==> Callbacks
  def index_success(books)
    @books = books

    respond_to do |format|
      format.html { render 'index'}
      format.json { render json: @books }
    end   
  end

  def show_success(book)
    @book = book

    respond_to do |format|
      format.html { render 'show'}
      format.json { render json: @book }
    end
  end  

  def new_success(book)
    @book = book

    respond_to do |format|
      format.html { render 'new'}
      format.json { render json: @book }
    end
  end  

  def edit_success(book)
    @book = book

    respond_to {|format| render 'edit'}
  end  

  def create_success(book)
    @book = book

    respond_to do |format|
      format.html { redirect_to @book, notice: 'Book was successfully created.' }
      format.json { render json: @book, status: :created, location: @book }
    end
  end 

  def create_failed(book)
    @book = book

    respond_to do |format|
      format.html { render action: "new" }
      format.json { render json: @book.errors, status: :unprocessable_entity }      
    end
  end   

  def update_success(book)
    @book = book

    respond_to do |format|
      format.html { redirect_to @book, notice: 'Book was successfully updated.' }
      format.json { head :no_content }      
    end
  end

  def update_failed(book)
    @book = book

    respond_to do |format|
      format.html { render action: "edit" }
      format.json { render json: @book.errors, status: :unprocessable_entity }      
    end
  end    

  def destroy_success(book)
    @book = book

    respond_to do |format|
      format.html { redirect_to books_url }
      format.json { head :no_content }
    end
  end  

  private

  def target
    BookCrudTarget.new(self)
  end
end
