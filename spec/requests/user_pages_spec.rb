require 'rails_helper'

Rspec.describe "User pages" do
  describe "edit" do
    let(:user) {FactoryGirl.create(:user)}
    before{visit edit_user_path(user)}

    describe "page" do
      it {should have_content("Update your profile")}
      it {should have_title("Edit profile")}
    end
  end
end
