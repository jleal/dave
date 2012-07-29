class FunkyBooksController < ApplicationController
  # GET /funky_books
  # GET /funky_books.json
  def index
    @funky_books = FunkyBook.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @funky_books }
    end
  end

  # GET /funky_books/1
  # GET /funky_books/1.json
  def show
    @funky_book = FunkyBook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @funky_book }
    end
  end

  # GET /funky_books/new
  # GET /funky_books/new.json
  def new
    @funky_book = FunkyBook.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @funky_book }
    end
  end

  # GET /funky_books/1/edit
  def edit
    @funky_book = FunkyBook.find(params[:id])
  end

  # POST /funky_books
  # POST /funky_books.json
  def create
    @funky_book = FunkyBook.new(params[:funky_book])

    respond_to do |format|
      if @funky_book.save
        format.html { redirect_to @funky_book, notice: 'Funky book was successfully created.' }
        format.json { render json: @funky_book, status: :created, location: @funky_book }
      else
        format.html { render action: "new" }
        format.json { render json: @funky_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /funky_books/1
  # PUT /funky_books/1.json
  def update
    @funky_book = FunkyBook.find(params[:id])

    respond_to do |format|
      if @funky_book.update_attributes(params[:funky_book])
        format.html { redirect_to @funky_book, notice: 'Funky book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @funky_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funky_books/1
  # DELETE /funky_books/1.json
  def destroy
    @funky_book = FunkyBook.find(params[:id])
    @funky_book.destroy

    respond_to do |format|
      format.html { redirect_to funky_books_url }
      format.json { head :no_content }
    end
  end
end
