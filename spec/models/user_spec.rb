require 'spec_helper'

describe User do
  before do
    @user = User.new(name: "Test User", username: "Tester", email: "test@example.com",
                    password: "foobar", password_confirmation: "foobar")
  end
      
  subject {@user}

  it {should respond_to(:email)}
  it {should respond_to(:name)}
  it {should respond_to(:username)}
  it {should respond_to(:password_digest)}

end

