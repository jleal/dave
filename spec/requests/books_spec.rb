require 'spec_helper'

describe "Books" do
  describe "GET /books" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get books_path, {:controller_type => :books}
      response.status.should be(200)
    end
  end
end
