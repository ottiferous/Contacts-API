require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/5'
).to_s

# params = { :id => 3 }

# make_user_url = Addressable::URI.new(
#     scheme: 'http',
#     host: 'localhost',
#     port: 3000,
#     path: '/users'
#   ).to_s
#
# params = { :user => { :name => "Gizmo", :email => "gizmo@gizmo.net"} }

puts RestClient.delete(url)
# puts RestClient.get(url)