#Group 4: Tyler, Emily, Chris M., Chris S., Jeremiah

#Rules:
# Make a system that allows you to either a) save a message or b) retrieve a message
# When saving, return a # that the user can use to retrieve a message
# When retrieving, allow a user to put in a # to see the message saved

#Bonus - search for message based on part of message

#Loop:

choice = "z"
messages = []    #establishing messages array outside of loop to avoid resetting stored messages

while choice != "d"  #referencing break loop option

puts "Would you like to a) store a message, b) retrieve a message, c) search for messages based on content, or d) exit?"
puts "Please select only 1 letter."
choice = gets.chomp.downcase

#if store: store message, give user messageID number (stored in array)

if choice == "a"
    puts "Enter your message."
    messages << gets.chomp
    puts "Your message ID number is: #{messages.length - 1}"

elsif choice == "b"    #retrieve: retrieve message at selected value
    puts "Enter your message ID number."
number = gets.chomp.to_i 
puts "Your message is: #{messages[number]}."

elsif choice == "c"   
    puts "What message would you like to search for? Please write what you can remember from your message."
     partial_message = gets.chomp

     check_loop = 0
    messages.each_with_index do |saved_message, message_ID|

        if saved_message.include? partial_message
            check_loop += 1
            puts "Your message number is: #{message_ID}. Your message is #{saved_message}"
        end
    end

    if check_loop == 0
    puts "I'm sorry, your message wasn't found. Please look below for your message."
    messages.each_with_index do |saved_message, message_ID|
        puts "Your message number is: #{message_ID}. Your message is #{saved_message}"
    end
    end

elsif choice == "d"
    puts "Thank you for using Message RetrievalTM."  #exit: break loop

else choice != "a" || choice != "b" || choice != "c"     #"Try again"
    puts "Really? No seriously - there were only three options? I mean COME ON!"
end
end
