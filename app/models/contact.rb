class Contact < ActiveRecord::Base

  validates :user_id, :presence => true
  validates :name, :presence => true
  validates :email, :presence => true

  belongs_to(
    :owner,
    :class_name => 'User'
  )
  has_many :contact_shares

end
