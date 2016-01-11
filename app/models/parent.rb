class Parent < ActiveRecord::Base
  has_secure_password
  has_many :kids
  has_many :playdates, through: :kids
end
