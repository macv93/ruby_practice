def caesar_cipher(message, key)
    z = 122
    a = 96
    real_values = message.bytes
   
    puts "Secret Name: "
    for value in real_values
        value += key
        if(value > z)
        value = value - z + a
        end
        print value.chr

    end
    puts "\n"

    puts "Original Name: "
    for value in real_values
        print value.chr
    end
    puts "\n"
  
end

puts "What would you like to encode?"
secret_message = gets.chomp.downcase
puts "Please enter the secret value:"
secret_code = gets.chomp.to_i
caesar_cipher(secret_message, secret_code)
