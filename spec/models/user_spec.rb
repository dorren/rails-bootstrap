require 'spec_helper'

describe User do
  let!(:user) { Factory.create :user }
  
  it "should not create user with same email" do
    lambda {
      user2 = Factory.create :user
    }.should raise_error ActiveRecord::RecordInvalid, "Validation failed: Email has already been taken"
  end
end
