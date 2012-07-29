require 'spec_helper'

describe "funky_books/new" do
  before(:each) do
    assign(:funky_book, stub_model(FunkyBook,
      :name => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new funky_book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => funky_books_path, :method => "post" do
      assert_select "input#funky_book_name", :name => "funky_book[name]"
      assert_select "textarea#funky_book_content", :name => "funky_book[content]"
    end
  end
end
