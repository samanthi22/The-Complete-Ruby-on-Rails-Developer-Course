class User

    attr_accessor :name, :email
    def initialize(name, email)
        @name = name
        @email = email
    end
    
    def run
        puts "Hey I'm running"
    end
end

# < sub-class
class Buyer < User
    
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