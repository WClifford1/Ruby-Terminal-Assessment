require './coffeeList'
require './createCoffee'

class CoffeeApp

attr_accessor :choice, :choiceList

    def initialize
        @choice = choice
        @choiceList = choiceList
    end

    def welcome

        system('clear')

        #Title screen
        puts "WELCOME TO THE COFFEE APP\n\n\n"
        puts "Press Enter to see the options\n\n"
        gets.chomp

        #Start a loop at the main menu
        loop do

        system('clear')

        #This is the main menu, it prompts the user what to do
        puts "To create a new coffee recipe press '1'\n\n
To read a recipe from the existing coffee recipe list press '2'\n\n
To update the coffee recipe list press '3'\n\n
To delete an item from the coffee recipe list press '4'\n\n
To exit the app type 'exit'\n\n"


        #Accept user input
        choice = gets.chomp
        choice.downcase!
                
            if choice == "2"
                testb = Coffee.new
                testb.read
                break

            elsif choice == "1"
                testc = Create.new
                testc.build

            elsif choice == "exit"
                break

            else choice != "2"
                puts "\n\nInvalid Answer\n\n"
            
            end
        end
    end
end

testa = CoffeeApp.new
testa.welcome