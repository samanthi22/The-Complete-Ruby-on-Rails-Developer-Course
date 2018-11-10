require 'json'

class User 
   attr_accessor:email, :name, :permissions
   # don't typo initialize 
   # * takes in argument creates an array
   # args[0] email
   # args[1] username
    def initialize(*args)
   @email= args[0]
   @name= args[1]
   @permissions= User.permissions_from_template
    end
   
    def self.permissions_from_template 
   file= File.read 'user_permissions_template.json'
   # symbolize_names: true
   JSON.load(file, nil, symbolize_names: false)
    end
  
    def save
   self_json= {email: @email, name: @name, permissions: @permissions}.to_json 
      open('users.json', 'a') do |file|
          file.puts self_json
    end
end
end
