require 'spec_helper'

describe "Users" do
  
  describe "signup" do
  
    describe "failure" do
      it "should not make a new user" do
        lambda do
          visit signup_path
          click_button "Sign up"
          response.should render_template('new')
          response.should have_tag("div#errorExplanation")
        end.should_not change(User, :count)
      end
    end
    
    describe "success" do
      it "should make a new user" do
        lambda do
          visit signup_path
          fill_in "Name",         :with => "Example User"
          fill_in "Email",        :with => "user@example.com"
          fill_in "Password",     :with => "foobar"
          fill_in "Confirmation", :with => "foobar"
          click_button "Sign up"
          response.should render_template('users/show')
          response.should have_tag("div.flash.success")
        end.should change(User, :count).by(1)
      end
    end    
  end
  
  describe "sign in/out" do
    describe "failure" do
      it "should not sign a user in" do
        user = Factory(:user)
        user.email = ""
        user.password = ""
        integration_sign_in(user)
        response.should render_template('sessions/new')
        response.should have_tag("div.flash.error", /invalid/i)
      end
    end
    
    describe "success" do
      it "should sign a user in and out" do
        user = Factory(:user)
        integration_sign_in(user)
        controller.should be_signed_in
        click_link "Sign out"
        controller.should_not be_signed_in
      end
      
      it "should sign a user in and let the signup button disappear" do
        user = Factory(:user)
        integration_sign_in(user)
        visit root_path
        response.should_not have_tag("a[href=?]", signup_path)
      end
    end
      #   
      # describe "sign in and out and back in" do
      #   it "should sign a user in and out and back in" do
      #     user = Factory(:user)
      #     integration_sign_in(user)
      #     controller.should be_signed_in
      #     click_link "Sign out"
      #     controller.should_not be_signed_in
      #     # Sign back in
      #     integration_sign_in(user)
      #     controller.should be_signed_in
      #   end
      # end
  end
  

    
  
end
