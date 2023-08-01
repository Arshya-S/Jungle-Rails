require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do


    it("Should not be valid when password confirmation isn't equal to password") do
      @user = User.new(:name => "Jake", :email => "jake@gmail.com", :password => '1234', :password_confirmation => "1235")
      expect(@user).not_to be_valid
    end

    it("Should not be valid when password confirmation isn't present") do
      @user = User.new(:name => "Jake", :email => "jake@gmail.com", :password => '1234')
      expect(@user).to have_attributes(:password_confirmation => nil)
    end

    it("Should not be valid when either first name last name and email are not present") do
      @user = User.new(:email => "jake@gmail.com", :password => '1234')
      expect(@user).to have_attributes(:name => nil)
    end

    it("Should not be valid when password has length less than or equal to 1") do
      @user = User.new(:name => 'Jake' :email => "jake@gmail.com", :password => '1')
      expect(@user).not_to be_valid
    end



  end
end
