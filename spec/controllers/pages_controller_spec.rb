require 'spec_helper'

describe PagesController do
  integrate_views
  
  # This is being performed before each test
  # and the instance variable can be used in each
  # test suite
  before(:each) do
    @baseTitle = "Ruby on Rails Tutorial Sample App | "
  end

  # Individual tests for each page
  # ordered alphabethically
  
  # 'about' page
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'about'
      response.should have_tag( "title", 
                                @baseTitle + "About")
    end
  end

  # 'contact' page
  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'contact'
      response.should have_tag( "title", 
                                @baseTitle + "Contact")
    end
  end

  # 'help' page
  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'help'
      response.should have_tag( "title",
                                @baseTitle + "Help")
    end
  end

  # 'home' page
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'home'
      response.should have_tag( "title",
                                @baseTitle + "Home")
    end
  end
  
  
end
