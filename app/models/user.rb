class User < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :verified
  validates :name, presence: true
  validates :email,:phone
end
