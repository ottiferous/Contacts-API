class User < ActiveRecord::Base

  validates :username, :presence => true, :uniqueness => true

  has_many :contacts
  has_many :contact_shares

end
