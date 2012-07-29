
module BooksControllerDelegate

  #==> Target(s)
  def target
    BookCrudTarget.new(self)
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

end