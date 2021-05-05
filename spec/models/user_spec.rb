require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    it 'must have valid attributes' do
       params = {
       name:'Miss Lucy',
       email: 'princess@dumpstercat.com',
       password:'password',
       password_confirmation:'password'
       }
       expect(User.new(params)).to be_valid

     end
    it 'must have a password greater than 4 characters' do
       params = {
       name:'Miss Lucy',
       email: 'princess@dumpstercat.com',
       password:'pep',
       password_confirmation:'pep'
       }
       expect(User.new(params)).to_not be_valid
     end
    it 'must have matching password/confirmation fields' do
       params = {
       name:'Miss Lucy',
       email: 'princess@dumpstercat.com',
       password:'password',
       password_confirmation:'passwird'
       }
       expect(User.new(params)).to_not be_valid
    end
    describe '.authenticate_with_credentials' do
     it "checks the login and returns the authenticated user" do
      user = User.create(name: "Aimee Oak", :email => "theaimeeoak@gmail.com", :password => "password", :password_confirmation => "password")
      authenticated_user = User.authenticate_with_credentials("theaimeeoak@gmail.com", "password")
      expect(authenticated_user).to eq(user)
     end
    end
  end 