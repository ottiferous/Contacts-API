require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users'
).to_s

make_user_url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users'
  ).to_s

delete_url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/6'
).to_s

patch_url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/5'
).to_s

patch_params = { :username => "Lucas" }
delete_params = { :id => 6 }
params = { :username => "Heather" }

#puts RestClient.post(make_user_url, params)
#puts RestClient.delete(delete_url)
puts RestClient.patch(patch_url, patch_params)