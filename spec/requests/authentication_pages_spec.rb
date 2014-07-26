require 'rails_helper'

RSpec.describe "AuthenticationPages" do
  describe "Authentication" do
    subject {page}

    describe "signin page" do
      before {visit signin_path}

      it {should have_content "Sign in"}
      
      describe "with invalid information" do
        it {should have_title "Sign in"}
        it {should have_selector('div.alert.alert-error')}
      end
    end
  end
end
