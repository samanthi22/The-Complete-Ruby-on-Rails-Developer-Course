module Destructable
    def destroy(anyobject)
       puts "I will destroy the object" 
    end
end

class User
    include Destructable
    
    attr_accessor :name, :email
    def initialize(name, email)
        @name = name
        @email = email
    end
    
    def run
        puts "Hey I'm running"
    end
    
    def self.identify_yourself
        puts "Hey I am a class method"
    end
end

# < sub-class
class Buyer < User
    # inheritance
    def run
        puts "Hey I'm not running and I'm in buyer class"
    end
end

class Seller < User
    
end

class Admin < User
    
end

user = User.new("Samanthi", "sjinadasa@fas.harvard.edu")
puts "My user's name is #{user.name} and her email is #{user.email}"
user.name = "John"
user.email = "john@example.com"
puts user.name
puts "My user's new name is #{user.name} and his email is #{user.email}"

buyer1 = Buyer.new("John Doe", "johndoe@example.com")
buyer1.run
seller1 = Seller.new("John Doe1", "johndoe1@example.com")
seller1.run
admin1 = Admin.new("John Doe2", "johndoe2@example.com")
admin1.run
puts Buyer.ancestors

User.identify_yourself
=begin
My user's name is Samanthi and her email is sjinadasa@fas.harvard.edu
John
My user's new name is John and his email is john@example.com
Hey I'm not running and I'm in buyer class
Hey I'm running
Hey I'm running
Buyer
User
Object
Kernel
BasicObject
Hey I am a class method
=end

user = User.new("jinadasa", "sjinadasa@fas.harvard.edu")
# user2.rb:72:in `<main>': undefined method `destroy' for #<User:0x000000020a03c8> (NoMethodError)
# this method is not accessible by user
user.destroy("myname")
