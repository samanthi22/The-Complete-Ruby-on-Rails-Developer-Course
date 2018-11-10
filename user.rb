class User
    # pass in name
    def initialize(name)
       @name = name 
    end
    
    def run 
       puts "Hey I'm running" 
    end
    
    def get_name
        @name
    end
    
    def set_name=(name)
        @name = name
    end
end

user = User.new("Samanthi")
user1 = User.new("John")
user2 = User.new("Kevin")
puts user.get_name
user.set_name= "John"
puts user.get_name

# puts User.ancestors
=begin
Object
Kernel
BasicObject
#<User:0x0000000173e4d8>
=end
=begin
#<User:0x00000001271e00>
#<User:0x00000001271d88>
#<User:0x00000001271e50>
=end
puts user1
puts user2
user.run
user1.run
user2.run

puts user 
# Object gets created

# getter method
puts user.get_name
# output
# user.rb:37:in `<main>': undefined method `name' for #<User:0x0000000159d930 @name="Samanthi"> (NoMethodError)

# get name