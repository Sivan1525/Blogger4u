class Author < ActiveRecord::Base
  attr_accessible :crypted_password, :email, :salt, :username
  authenticates_with_sorcery!
  validates_confirmation_of :password, :message=> "should match confirmation", :if => :password
end
