require 'spec_helper'

describe "funky_books/edit" do
  before(:each) do
    @funky_book = assign(:funky_book, stub_model(FunkyBook,
      :name => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit funky_book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => funky_books_path(@funky_book), :method => "post" do
      assert_select "input#funky_book_name", :name => "funky_book[name]"
      assert_select "textarea#funky_book_content", :name => "funky_book[content]"
    end
  end
end
