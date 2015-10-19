class User < ActiveRecord::Base
  has_secure_password

  # attr_accessible :email, :password, :password_confirmation

  validates :user_name, :presence => true
  validates :email, presence: true
  validates_uniqueness_of :user_name
  validates_uniqueness_of :email
end
