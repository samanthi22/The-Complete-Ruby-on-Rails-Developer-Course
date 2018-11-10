require 'pp'
require_relative 'user'

user = User.new 'baghya.samanthi@gmail.com', 'Samanthi'

pp user

user.save