hash = {
    "newyork" => "212",
    "newbrunswick" => "732", 
    "losangeles" => "310",
    "walnutcreek" => "925", 
    "cleveland" => "330", 
    "york" => "223", 
    "cincinnati" => "513", 
    "denver" => "970", 
    "miami" => "786", 
    "beverlyhills" => "562"
}

loop do
    puts "Do you want to lookup a area code based on a city name?(Y/N)"
    
    
    answer = gets.chomp
    if answer != "Y"
        break
    end
    puts "Here are the city names:"
    hash.each do |key, value| 
       puts "#{key} \n" 
    end
    puts "\nType in the city that you want to lookup?\n"
    input = gets.chomp
    # display area code
    # if in hash else
    if hash.include?(input)
    puts "\n#{input} area code is " + hash[input] + "\n\n"
    else
        puts "Try again"
    end
end


