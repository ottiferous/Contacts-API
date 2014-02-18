class ContactShare < ActiveRecord::Base

    validates :contact_id, :presence => true, :uniqueness => true
    validates :user_id, :presence => true

    belongs_to :user
    has_one :contact
end
