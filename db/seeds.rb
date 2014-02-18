# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Make some Users
#<User id: nil, username: nil, created_at: nil, updated_at: nil>
a = User.create(:username => 'Andrew')
b = User.create(:username => 'Bob')
c = User.create(:username => 'Cathy')
d = User.create(:username => 'Doug')
e = User.create(:username => 'Ethan')


# Make some Contacts
#<Contact id: nil, name: nil, email: nil, user_id: nil, created_at: nil, updated_at: nil>
f = Contact.create(:name => 'Bill Gates', :email => 'admin@windows.com', :user_id => a.id)
g = Contact.create(:name => 'Bob The Builder', :email => 'bob@claymation.com', :user_id => b.id)
h = Contact.create(:name => 'Crazy Cat Lady', :email => 'iLOVEcats@catsRaweso.me', :user_id => c.id)
i = Contact.create(:name => 'Douglas Adams', :email => 'ford@prefect.net', :user_id => d.id)
j = Contact.create(:name => 'Carl', :email => 'carl@hotmail.com', :user_id => e.id)

# Make Contact Shares
#<ContactShare id: nil, contact_id: nil, user_id: nil, created_at: nil, updated_at: nil>
ContactShare.create(:contact_id => f.id, :user_id => a.id)
ContactShare.create(:contact_id => g.id, :user_id => b.id)
ContactShare.create(:contact_id => h.id, :user_id => c.id)
ContactShare.create(:contact_id => i.id, :user_id => d.id)
ContactShare.create(:contact_id => j.id, :user_id => e.id)