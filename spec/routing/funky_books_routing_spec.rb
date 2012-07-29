require "spec_helper"

describe FunkyBooksController do
  describe "routing" do

    it "routes to #index" do
      get("/funky_books").should route_to("funky_books#index")
    end

    it "routes to #new" do
      get("/funky_books/new").should route_to("funky_books#new")
    end

    it "routes to #show" do
      get("/funky_books/1").should route_to("funky_books#show", :id => "1")
    end

    it "routes to #edit" do
      get("/funky_books/1/edit").should route_to("funky_books#edit", :id => "1")
    end

    it "routes to #create" do
      post("/funky_books").should route_to("funky_books#create")
    end

    it "routes to #update" do
      put("/funky_books/1").should route_to("funky_books#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/funky_books/1").should route_to("funky_books#destroy", :id => "1")
    end

  end
end
