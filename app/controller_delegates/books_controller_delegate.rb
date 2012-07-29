
module BooksControllerDelegate

  #==> Target(s)
  def target(controller_type)

    case 
    when controller_type.to_sym == :books
      BookCrudTarget.new(self)   
    when defined?(super)
      super
    else
      raise NoMethodError, "undefined method #{__method__} in ancestor chain"
    end      
  end

  #==> Callbacks
  def index_success(books, controller_type)
 
    case 
    when controller_type.to_sym == :books
      @books = books

      respond_to do |format|
        format.html { render 'index'}
        format.json { render json: @books }
      end          
    when defined?(super)
      super
    else
      raise NoMethodError, "undefined method #{__method__} in ancestor chain"
    end    
  end

  def show_success(book, controller_type)

    case 
    when controller_type.to_sym == :books
      @book = book

      respond_to do |format|
        format.html { render 'show'}
        format.json { render json: @book }
      end        
    when defined?(super)
      super
    else
      raise NoMethodError, "undefined method #{__method__} in ancestor chain"
    end      
  end  

  def new_success(book, controller_type)

    case 
    when controller_type.to_sym == :books
      @book = book

      respond_to do |format|
        format.html { render 'new'}
        format.json { render json: @book }
      end        
    when defined?(super)
      super
    else
      raise NoMethodError, "undefined method #{__method__} in ancestor chain"
    end      
  end  

  def edit_success(book, controller_type)

    case 
    when controller_type.to_sym == :books
      @book = book

      respond_to {|format| render 'edit'}        
    when defined?(super)
      super
    else
      raise NoMethodError, "undefined method #{__method__} in ancestor chain"
    end      
  end  

  def create_success(book, controller_type)

    case 
    when controller_type.to_sym == :books
      @book = book

      respond_to do |format|
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render json: @book, status: :created, location: @book }
      end        
    when defined?(super)
      super
    else
      raise NoMethodError, "undefined method #{__method__} in ancestor chain"
    end      
  end 

  def create_failed(book, controller_type)

    case 
    when controller_type.to_sym == :books
      @book = book

      respond_to do |format|
        format.html { render action: "new" }
        format.json { render json: @book.errors, status: :unprocessable_entity }      
      end        
    when defined?(super)
      super
    else
      raise NoMethodError, "undefined method #{__method__} in ancestor chain"
    end      
  end   

  def update_success(book, controller_type)

    case 
    when controller_type.to_sym == :books
      @book = book

      respond_to do |format|
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { head :no_content }      
      end        
    when defined?(super)
      super
    else
      raise NoMethodError, "undefined method #{__method__} in ancestor chain"
    end      
  end

  def update_failed(book, controller_type)

    case 
    when controller_type.to_sym == :books
      @book = book

      respond_to do |format|
        format.html { render action: "edit" }
        format.json { render json: @book.errors, status: :unprocessable_entity }      
      end        
    when defined?(super)
      super
    else
      raise NoMethodError, "undefined method #{__method__} in ancestor chain"
    end      
  end    

  def destroy_success(book, controller_type)

    case 
    when controller_type.to_sym == :books
      @book = book

      respond_to do |format|
        format.html { redirect_to books_url }
        format.json { head :no_content }
      end        
    when defined?(super)
      super
    else
      raise NoMethodError, "undefined method #{__method__} in ancestor chain"
    end      
  end  

end