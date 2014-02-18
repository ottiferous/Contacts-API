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

params = { :username => "Gizmo" }

p RestClient.post(make_user_url, params)