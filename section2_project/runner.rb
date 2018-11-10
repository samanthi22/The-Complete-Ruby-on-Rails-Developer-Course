require 'pp'
# pretty print
# styles output better
require_relative 'user'

user = User.new 'sjinadasa@fas.harvard.edu', 'Samanthi'

pp user

user.save