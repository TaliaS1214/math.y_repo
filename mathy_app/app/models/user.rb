class User < ActiveRecord::Base
  acts_as_authentic
  
  validates :username, :first_name, :last_name, presence: true
  validates :username, uniqueness: true
end
