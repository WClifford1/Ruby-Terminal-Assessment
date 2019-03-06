class CoffeeMenu

attr_accessor :coffee_recipes, :recipeList

    def initialize
        @coffee_recipes = []
        @recipeList = [ { "cappuccino" => { "1" => "Add hot milk\n\n", "2" => "Add amount of coffee sachets to your choosing\n\n", "3" => "Stir the milk vigorously until there is froth on the top\n\n", "4" => "Put chocolate spinkles on the top.\n\n", "5" => "Enjoy\n\n"}} ,
            { "espresso" => { "1" => "Add a quater of a mug of hot water\n\n", "2" => "Add one full serve of coffee\n\n", "3" => "Stir gently until black\n\n", "4" => "Enjoy\n\n"}}]
    end


    def populate_menu
        system('clear')
        newhash = {}
        @coffee_recipes << Coffee_Recipe.new("flat white", { "1" => "Add hot milk\n\n", "2" => "Add amount of coffee sachets to your choosing\n\n", "3" => "Add sugar or sweetener as desired\n\n", "4" => "Enjoy\n\n"})
    
        @coffee_recipes.each do |x|
            newhash[x.name] = x.recipe
            @recipeList.push(newhash)
        end

        
    end




    def readTheList


        #Prompts the user of a recipe to choose from
        system('clear')
        puts "Choose a recipe from the list:\n\nFlat White\n\nCappuccino\n\nEspresso\n\n"
        choiceList = gets.chomp
        choiceList.downcase!


        #When a user enters a value that matches one of the name values from the array -
        #This part will iterate through the array and display the recipe steps in a string.
        @recipeList.each do |subhash|
            subhash.each do |k, v|
                if k.include? choiceList
                    system('clear')
                    puts "To make a #{k.capitalize}:\n\n"
                    v.each do |x,y|
                        puts "Step #{x}: #{y}"
                    end
                end
            end
        end
    end




def createCoffee

#Assigns a new array - this will be used to store the recipe until it is converted to a hash
    newarray = []
    
    
    #Prompts the user to enter what type of milk they want
    system('clear')
    puts "What type of milk do you want?\n\nOptions are:\n\n1: Full cream\n\n2: Skim\n\n3: Soy\n\n4: Almond\n\n5: Just water\n\n"
    milk = gets.chomp.to_i

        if          milk == 1
                    milk = "full cream milk."

            elsif   milk == 2
                    milk = "skim milk."

            elsif   milk == 3
                    milk = "soy milk."

            elsif   milk == 4
                    milk = "almond milk."

            else    milk == 5
                    milk = "water."

        end


    #Prompts the user to enter the strength of their coffee
    system('clear')
    puts "What strength do you want? Options are:\n\n1: Single shot\n\n2: Double shot\n\n3: Triple shot\n\n4. Decaf\n\n"
    strength = gets.chomp.to_i

        if          strength == 1
                    strength = "one sachet of coffee"

            elsif   strength == 2
                    strength = "two sachets of coffee"

            elsif   strength == 3
                    strength = "three sachets of coffee"

            else    strength == 4
                    strength = "one sachet of decaf coffee"

        end


    #Prompts the user to enter whether or not they want froth on their coffee
    system('clear')
    puts "Do you want froth on the top or not?\n\nOptions are:\n\n1: Yes\n\n2: No\n\n"
    froth = gets.chomp.to_i

        if          froth == 1
                    froth = "Stir strongly until frothy on the top"
    
            else    froth == 2
                    froth = "Stir until mixed in well"

        end


    #Since all the values so far have been mandatory, the values will be pushed into the array we created earlier
    newarray.push("Heat up a mug of #{milk}\n\n", "Add #{strength}.\n\n", "#{froth}.\n\n")


    #Prompts the user what type of sryup they want. For the first time they have the option to say None.
    system('clear')
    puts "What type of syrup do you want?\n\nOptions are:\n\n1: Camamel\n\n2: Vanilla\n\n3: Hazelnut\n\n4: None\n\n"
    sryup = gets.chomp.to_i

    if              sryup == 1
                    sryup = "one serving of caramel syrup and stir"
                    newarray.push("Add #{sryup}.\n\n")

        elsif       sryup == 2
                    sryup = "one serving of vanilla syrup and stir"
                    newarray.push("Add #{sryup}.\n\n")

        elsif       sryup == 3
                    sryup = "one serving of hazelnut syrup and stir"
                    newarray.push("Add #{sryup}.\n\n")

        else

    end


    #Prompts the user what type of extras they want. They have the option to say None.
    system('clear')
    puts "What extras do you want?\n\nOptions are:\n\n1: Marshmellow\n\n2: Honey\n\n3: Chocolate powder\n\n4: Chocolate sprinkle\n\n5: None\n\n"
    extras = gets.chomp.to_i

    if              extras == 1
                    extras = "one marshmellow and let it sit for two minutes to expand"
                    newarray.push("Add #{extras}.\n\n")

        elsif       extras == 2
                    extras = "honey and let it sit on the top"
                    newarray.push("Add #{extras}.\n\n")

        elsif       extras == 3
                    extras = "chocolate powder and stir it in to add a delicous chocolate flavour"
                    newarray.push("Add #{extras}.\n\n")

        elsif       extras == 4
                    extras = "Sprinkle chocolate flakes onto the top of the coffee"
                    newarray.push("#{extras}.\n\n")

        else

    end


    #The array's elements will be counted with a counter. From there the counter and the elements will be pushed into a hash.
    system('clear')
    puts "The recipe for making your custom coffee is:\n\n\n\n"
    newarray.push("Enjoy!\n\n\n\n")
    counter = 0
    newhash = {}
        newarray.each do 
            |item|
            counter += 1
            newhash[counter] = item
        end


    #The hash will be iterated through, so 1 = Add milk, 2 = Add coffee etc.
        newhash.each do |k, v|
            puts "Step #{k}: #{v}\n\n"
        end


    #This feature has not been implemented yet
    puts "Type 'SAVE' to save this recipe to the recipe list, or press Enter to return to the main menu"
    save = gets.chomp


    #     if save == "save"

    #         puts "Enter a name for your coffee"
    #         coffeeName = gets.chomp.downcase!
    #         newCoffee = {}
    #         newCoffee[coffeeName] = newhash
    #         @recipeList.push(newCoffee)
    #     end
    # puts @recipeList


    end

end



class Coffee_Recipe

attr_accessor :name, :recipe


    def initialize(name, recipe)
        @name = name
        @recipe = recipe
    end

end







class CoffeeApp

attr_accessor :choice, :choiceList


    def initialize
        @choice = choice
        @choiceList = choiceList
    end


    def mainmenu


        #Title screen
        system('clear')
        puts "WELCOME TO THE COFFEE APP\n\n\n"
        puts "Press Enter to see the options\n\n"
        gets.chomp


        #Start a loop at the main menu
        loop do


        #This is the main menu, it prompts the user what to do
        system('clear')
        puts "To create a new coffee recipe press '1'\n\n
To read a recipe from the existing coffee recipe list press '2'\n\n
To update the coffee recipe list press '3'\n\n
To delete an item from the coffee recipe list press '4'\n\n
To exit the app type 'exit'\n\n"


        #Accept user input
        choice = gets.chomp
        choice.downcase!
                
            if choice == "2"
                testb = CoffeeMenu.new
                testb.populate_menu
                testb.readTheList
                break

            elsif choice == "1"
                testc = CoffeeMenu.new
                testc.createCoffee

            elsif choice == "exit"
                break

            else choice != "2"
                puts "\n\nInvalid Answer\n\n"
            
            end
        end
    end
end


test = CoffeeMenu.new
testa = test.populate_menu

app = CoffeeApp.new
appa = app.mainmenu









#----------------------------------------------------------------------------
=begin
class Create < Coffee

    attr_accessor :recipeList
    
    
        def initialize
            super
        end
    
    
        def build
    
=end
            