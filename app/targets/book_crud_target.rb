
class BookCrudTarget < Struct.new(:listener)

  def index_for
    books = Book.all

    listener.index_success(books)
  end

  def show_for(book_id)
    book = Book.find(book_id)

    listener.show_success(book)
  end

  def new_for
    book = Book.new

    listener.new_success(book)
  end

  def edit_for(book_id)
    book = Book.find(book_id)

    listener.edit_success(book)
  end

  def create_for(book_params)
    book = Book.new(book_params)

    if book.save
      listener.create_success(book)      
    else
      listener.create_failed(book)
    end
  end

  def update_for(book_id, book_params)
    book = Book.find(book_id)

    if book.update_attributes(book_params)
      listener.update_success(book)      
    else
      listener.update_failed(book)
    end
  end

  def destroy_for(book_id)
    book = Book.find(book_id)
    book.destroy

    listener.destroy_success(book)
  end
end