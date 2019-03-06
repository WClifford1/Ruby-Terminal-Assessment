require './CoffeeMenu'




#This class is the main menu for the App.
class CoffeeApp

attr_accessor :choice, :choiceList


    def initialize
        @choice = choice
        @choiceList = choiceList
    end


    def mainmenu


        #Title screen
        system('clear')
        puts "\n\n\nWELCOME TO THE COFFEE APP\n\n\n"
        puts "Press Enter to see the options\n\n"
        gets.chomp

        #Create an instance of the CoffeeMenu class, the CoffeeApp class (this class) will use this instance
        testc = CoffeeMenu.new
        testc.populate_menu


        #Start a loop at the main menu
        loop do


        #This is the main menu, it prompts the user what to do
        system('clear')
        puts "\n\n\nTo create a new coffee recipe press '1'\n\n
To read a recipe from the existing coffee recipe list press '2'\n\n
To update the coffee recipe list press '3'\n\n
To delete an item from the coffee recipe list press '4'\n\n
To exit the app type 'exit'\n\n"


        #Accept user input
        choice = gets.chomp
        choice.downcase!
                
            if          choice == "1"
                        testc.createCoffee
            
                elsif   choice == "2"               
                        testc.readTheList

                elsif   choice == "3"
                        testc.updaterecipe

                elsif   choice == "4"
                        testc.deleteItem

                elsif   choice == "exit"
                        system('clear')
                        puts "\n\n\nHave a nice day\n\n\n\n\n\n\n\n\n"
                        break

                else    puts "\n\nInvalid Answer\n\n"
                        
            
            end
        end
    end
end



#Runs the CoffeeApp class
app = CoffeeApp.new
appa = app.mainmenu
