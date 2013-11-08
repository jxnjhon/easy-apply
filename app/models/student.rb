class Student < ActiveRecord::Base
  attr_accessible :confirm_password, :email_address, :first_name, :last_name, :password
  validates_presence_of :first_name, :last_name, :email_address, :password 
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates_presence_of :email_address, uniqueness: {:message=> "THE ACCOUNT EXISTS"}, format: {with: VALID_EMAIL_REGEX}
end