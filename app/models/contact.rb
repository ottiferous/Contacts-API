class Contact < ActiveRecord::Base

  validates :user_id, :presence => true
  validates :name, :presence => true
  validates :email, :presence => true

  belongs_to(
    :owner,
    :class_name => 'User'
  )
  has_many :contact_shares

  def self.contacts_for_user_id(user_id)
    Contact.find_by_sql([<<-SQL, user_id])
      SELECT *
      FROM contacts
        LEFT OUTER JOIN contact_shares
          ON contacts.id = contact_shares.contact_id
            JOIN users
              ON users.id = contact_shares.user_id
      WHERE users.id = ?
    SQL
  end

end


