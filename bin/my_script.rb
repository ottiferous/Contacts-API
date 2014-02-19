require 'addressable/uri'
require 'rest-client'

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users'
# ).to_s
#
# make_user_url = Addressable::URI.new(
#     scheme: 'http',
#     host: 'localhost',
#     port: 3000,
#     path: '/users'
#   ).to_s
#
# delete_user_url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users/6'
# ).to_s
#
# patch_user_url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users/5'
# ).to_s
#
# patch_params = { :username => "Lucas" }
# delete_params = { :id => 6 }
# params = { :username => "Heather" }

# contact_url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/contacts'
# ).to_s
#
# make_contact_url = Addressable::URI.new(
#     scheme: 'http',
#     host: 'localhost',
#     port: 3000,
#     path: '/contacts'
#   ).to_s
#
# patch_contact_url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/contacts/6'
# ).to_s
#
# delete_contact_url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/contacts/7'
# ).to_s

#<Contact id: nil, name: nil, email: nil, user_id: nil, created_at: nil, updated_at: nil>
# make_params = { name: "Cannondale Bicycles", email: "cannon@dale.go", user_id: 4 }
# make_params2 = { name: "Scwhinn Bicycles", email: "schwinn@ing.go", user_id: 4 }
# patch_params = { email: "bicycles@schwinn.com" }

# puts RestClient.post(make_contact_url, make_params)
# puts RestClient.post(make_contact_url, make_params2)
# puts RestClient.patch(patch_contact_url, patch_params)
# puts RestClient.delete(delete_contact_url)

new_share_url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contactshare/new'
).to_s

delete_share_url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contactshare/6'
).to_s

share_params = {contact_id: 7, user_id: 1}

# puts RestClient.post(new_share_url, share_params)
puts RestClient.delete(delete_share_url)
