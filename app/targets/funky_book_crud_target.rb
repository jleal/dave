
class FunkyBookCrudTarget < Struct.new(:listener)

  def index_for
    funky_books = FunkyBook.all

    listener.index_success(funky_books, :funky_books)
  end

  def show_for(funky_book_id)
    funky_book = FunkyBook.find(funky_book_id)

    listener.show_success(funky_book, :funky_books)
  end

  def new_for
    funky_book = FunkyBook.new

    listener.new_success(funky_book, :funky_books)
  end

  def edit_for(funky_book_id)
    funky_book = FunkyBook.find(funky_book_id)

    listener.edit_success(funky_book, :funky_books)
  end

  def create_for(funky_book_params)
    funky_book = FunkyBook.new(funky_book_params)

    if funky_book.save
      listener.create_success(funky_book, :funky_books)      
    else
      listener.create_failed(funky_book, :funky_books)
    end
  end

  def update_for(funky_book_id, funky_book_params)
    funky_book = FunkyBook.find(funky_book_id)

    if funky_book.update_attributes(funky_book_params)
      listener.update_success(funky_book, :funky_books)      
    else
      listener.update_failed(funky_book, :funky_books)
    end
  end

  def destroy_for(funky_book_id)
    funky_book = FunkyBook.find(funky_book_id)
    funky_book.destroy

    listener.destroy_success(funky_book, :funky_books)
  end
end