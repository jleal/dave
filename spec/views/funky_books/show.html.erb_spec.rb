require 'spec_helper'

describe "funky_books/show" do
  before(:each) do
    @funky_book = assign(:funky_book, stub_model(FunkyBook,
      :name => "Name",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
