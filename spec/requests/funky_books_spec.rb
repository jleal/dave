require 'spec_helper'

describe "FunkyBooks" do
  describe "GET /funky_books" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get funky_books_path, {:controller_type => :funky_books}
      response.status.should be(200)
    end
  end
end
