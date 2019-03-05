system('clear')

#Title screen
puts "WELCOME TO THE COFFEE APP\n\n"

#Prompt the user with instructions
puts "To create a new coffee recipe type 'create' or press '1'\n
To read a recipe from the existing coffee recipe list type 'read' or press '2'\n
To update the coffee recipe list type 'update' or press '3'\n
To delete an item from the coffee recipe list type 'delete' or press '4'\n\n"

#Accept user input
choice = gets.chomp
choice.downcase!


#Section for the user to see pre determinated list
if choice == "read" or "2"
system('clear') #Clears the screen for readability
    puts "Choose a recipe from the list:\n\nFlat White\n\nCappacino\n\nEspresso\n\n"
        choiceList = gets.chomp
        choiceList.downcase!
        if choiceList.include? "flat white"
            system('clear')
            puts "To make a Flat White:\n\n1. Add hot milk\n2. Add coffee\n3. Add sugar as desired\n\n"

        elsif choiceList.include? "cappacino"
            system('clear')
            puts "To make a Cappacino:\n\n1. Add hot milk\n2. Add Coffee\n3. Froth the milk\n4. Put chocolate spinkles on the top.\n\n"

        elsif choiceList.include? "espresso"
            system('clear')
            puts "To make an Espresso:\n\n1. Add a small amount of hot water\n2. Add one serve of coffee.\n\n"
        end

    end
