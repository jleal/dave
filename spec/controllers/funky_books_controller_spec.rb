require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe FunkyBooksController do

  # This should return the minimal set of attributes required to create a valid
  # FunkyBook. As you add validations to FunkyBook, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FunkyBooksController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all funky_books as @funky_books" do
      funky_book = FunkyBook.create! valid_attributes
      get :index, {:controller_type => :funky_books}, valid_session
      assigns(:funky_books).should eq([funky_book])
    end
  end

  describe "GET show" do
    it "assigns the requested funky_book as @funky_book" do
      funky_book = FunkyBook.create! valid_attributes
      get :show, {:id => funky_book.to_param, :controller_type => :funky_books}, valid_session
      assigns(:funky_book).should eq(funky_book)
    end
  end

  describe "GET new" do
    it "assigns a new funky_book as @funky_book" do
      get :new, {:controller_type => :funky_books}, valid_session
      assigns(:funky_book).should be_a_new(FunkyBook)
    end
  end

  describe "GET edit" do
    it "assigns the requested funky_book as @funky_book" do
      funky_book = FunkyBook.create! valid_attributes
      get :edit, {:id => funky_book.to_param, :controller_type => :funky_books}, valid_session
      assigns(:funky_book).should eq(funky_book)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new FunkyBook" do
        expect {
          post :create, {:funky_book => valid_attributes, :controller_type => :funky_books}, valid_session
        }.to change(FunkyBook, :count).by(1)
      end

      it "assigns a newly created funky_book as @funky_book" do
        post :create, {:funky_book => valid_attributes, :controller_type => :funky_books}, valid_session
        assigns(:funky_book).should be_a(FunkyBook)
        assigns(:funky_book).should be_persisted
      end

      it "redirects to the created funky_book" do
        post :create, {:funky_book => valid_attributes, :controller_type => :funky_books}, valid_session
        response.should redirect_to(FunkyBook.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved funky_book as @funky_book" do
        # Trigger the behavior that occurs when invalid params are submitted
        FunkyBook.any_instance.stub(:save).and_return(false)
        post :create, {:funky_book => {}, :controller_type => :funky_books}, valid_session
        assigns(:funky_book).should be_a_new(FunkyBook)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        FunkyBook.any_instance.stub(:save).and_return(false)
        post :create, {:funky_book => {}, :controller_type => :funky_books}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested funky_book" do
        funky_book = FunkyBook.create! valid_attributes
        # Assuming there are no other funky_books in the database, this
        # specifies that the FunkyBook created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        FunkyBook.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => funky_book.to_param, 
          :funky_book => {'these' => 'params'},
          :controller_type => :funky_books}, valid_session
      end

      it "assigns the requested funky_book as @funky_book" do
        funky_book = FunkyBook.create! valid_attributes
        put :update, {:id => funky_book.to_param, 
          :funky_book => valid_attributes,
          :controller_type => :funky_books}, valid_session
        assigns(:funky_book).should eq(funky_book)
      end

      it "redirects to the funky_book" do
        funky_book = FunkyBook.create! valid_attributes
        put :update, {:id => funky_book.to_param, 
          :funky_book => valid_attributes,
          :controller_type => :funky_books}, valid_session
        response.should redirect_to(funky_book)
      end
    end

    describe "with invalid params" do
      it "assigns the funky_book as @funky_book" do
        funky_book = FunkyBook.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FunkyBook.any_instance.stub(:save).and_return(false)
        put :update, {:id => funky_book.to_param, 
          :funky_book => {},
          :controller_type => :funky_books}, valid_session
        assigns(:funky_book).should eq(funky_book)
      end

      it "re-renders the 'edit' template" do
        funky_book = FunkyBook.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FunkyBook.any_instance.stub(:save).and_return(false)
        put :update, {:id => funky_book.to_param, 
          :funky_book => {},
          :controller_type => :funky_books}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested funky_book" do
      funky_book = FunkyBook.create! valid_attributes
      expect {
        delete :destroy, {:id => funky_book.to_param,
            :controller_type => :funky_books}, valid_session
      }.to change(FunkyBook, :count).by(-1)
    end

    it "redirects to the funky_books list" do
      funky_book = FunkyBook.create! valid_attributes
      delete :destroy, {:id => funky_book.to_param,
          :controller_type => :funky_books}, valid_session
      response.should redirect_to(funky_books_url)
    end
  end

end
