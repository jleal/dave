
class BookCrudTarget < Struct.new(:listener)

  def index_for
    books = Book.all

    listener.index_success(books)
  end

  def show(book_id)
    book = Book.find(book_id)

    listener.show_success(books)
  end

  def new
    book = Book.new

    listener.new_success(books)
  end

  def edit(book_id)
    book = Book.find(book_id)

    listener.edit_success(books)
  end

  def create(book_params)
    book = Book.new(book_params)

    if book.save
      listener.create_success(books)      
    else
      listener.create_failed(books)
    end

  end

  def update(book_id, book_params)
    book = Book.find(book_id)

    if book.update_attributes(book_params)
      listener.update_success(books)      
    else
      listener.update_failed(books)
    end
  end

  def destroy(book_id)
    book = Book.find(book_id)
    book.destroy

    listener.destroy_success(books)
  end
end