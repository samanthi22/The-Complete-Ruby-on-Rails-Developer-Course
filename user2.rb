class User

    attr_accessor :name
    def initialize(name)
        @name = name
    end
    
    def run
        puts "Hey I'm running"
    end
end

user = User.new("Samanthi")
puts user.name
user.name = "John"
puts user.name