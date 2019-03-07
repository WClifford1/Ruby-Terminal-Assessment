class CoffeeMenu


    attr_accessor :coffee_recipes
    
    
        def initialize
            @coffee_recipes = []
        end
    
    
    
        #This is the pre-existing list of coffee recipes that is available to the user
        def populate_menu
            @coffee_recipes = [{"espresso" => { 1 => "Add a quater of a mug of hot water\n\n", 2 => "Add one full serve of coffee\n\n", 3 => "Stir gently until black\n\n", 4 => "Enjoy\n\n"}} ,
                {"flat white" => { 1 => "Add hot milk\n\n", 2 => "Add amount of coffee sachets to your choosing\n\n", 3 => "Add sugar or sweetener as desired\n\n", 4 => "Enjoy\n\n"}},
                {"cappuccino" => { 1 => "Add hot milk\n\n", 2 => "Add amount of coffee sachets to your choosing\n\n", 3 => "Stir the milk vigorously until there is froth on the top\n\n", 4 => "Put chocolate spinkles on the top.\n\n", 5 => "Enjoy\n\n"}}]    
        end
    
    
    
        #This is the first method in the program, the CREATE method
        def createCoffee
    
            #The variables for the questions have to be instantiazed because each question is witin it's own loop
            def initialize
                @milk = milk
                @strength = strength
                @froth = froth
                @syrup = sryup
                @extras = extras
            end
    
    
            #Assigns a new array - this will be used to store the recipe until it is converted to a hash
            newarray = []
        
        
            #Prompts the user to enter what type of milk they want
            loop do
                system('clear')
                puts "\n\n\nWhat type of milk do you want?\n\nOptions are:\n\n1: Full cream\n\n2: Skim\n\n3: Soy\n\n4: Almond\n\n5: Just water\n\n"
                @milk = gets.chomp.to_i
                
                if          @milk == 1
                            @milk = "full cream milk."
                            break
    
                    elsif   @milk == 2
                            @milk = "skim milk."
                            break
    
                    elsif   @milk == 3
                            @milk = "soy milk."
                            break
    
                    elsif   @milk == 4
                            @milk = "almond milk."
                            break
    
                    elsif   @milk == 5
                            @milk = "water."
                            break
                    else
    
                end
            end
    
    
            #Prompts the user to enter the strength of their coffee
            loop do
                system('clear')
                puts "\n\n\nWhat strength do you want? Options are:\n\n1: Single shot\n\n2: Double shot\n\n3: Triple shot\n\n4. Decaf\n\n"
                @strength = gets.chomp.to_i
    
                if          @strength == 1
                            @strength = "one sachet of coffee"
                            break
    
                    elsif   @strength == 2
                            @strength = "two sachets of coffee"
                            break
    
                    elsif   @strength == 3
                            @strength = "three sachets of coffee"
                            break
    
                    elsif   @strength == 4
                            @strength = "one sachet of decaf coffee"
                            break
                    else
    
                end
            end
    
    
            #Prompts the user to enter whether or not they want froth on their coffee
            loop do 
                system('clear')
                puts "\n\n\nDo you want froth on the top or not?\n\nOptions are:\n\n1: Yes\n\n2: No\n\n"
                @froth = gets.chomp.to_i
    
                if          @froth == 1
                            @froth = "Stir strongly until frothy on the top"
                            break
    
                    elsif   @froth == 2
                            @froth = "Stir until mixed in well"
                            break
    
                    else    
    
                end
            end
    
    
            #Since all the values so far have been mandatory, the values will be pushed into the empty array called newarray
            newarray.push("Heat up a mug of #{@milk}\n\n", "Add #{@strength}.\n\n", "#{@froth}.\n\n")
    
    
            #Prompts the user what type of syrup they want. For the first time they have the option to say None.
            #Each response that they make will push a relavent string to the array
            loop do
                system('clear')
                puts "\n\n\nWhat type of syrup do you want?\n\nOptions are:\n\n1: Camamel\n\n2: Vanilla\n\n3: Hazelnut\n\n4: None\n\n"
                @syrup = gets.chomp.to_i
    
                if          @syrup == 1
                            @syrup = "one serving of caramel syrup and stir"
                            newarray.push("Add #{@syrup}.\n\n")
                            break
    
                    elsif   @syrup == 2
                            @syrup = "one serving of vanilla syrup and stir"
                            newarray.push("Add #{@syrup}.\n\n")
                            break
    
                    elsif   @syrup == 3
                            @syrup = "one serving of hazelnut syrup and stir"
                            newarray.push("Add #{@syrup}.\n\n")
                            break
    
                    elsif   @syrup == 4
                            break
    
                    else
    
                end
            end
    
    
            #Prompts the user what type of extras they want. They have the option to say None.
            #Each response that they make will push a relavent string to the array
            loop do
                system('clear')
                puts "\n\n\nWhat extras do you want?\n\nOptions are:\n\n1: Marshmellow\n\n2: Honey\n\n3: Chocolate powder\n\n4: Chocolate sprinkle\n\n5: None\n\n"
                @extras = gets.chomp.to_i
    
                if          @extras == 1
                            @extras = "one marshmellow and let it sit for two minutes to expand"
                            newarray.push("Add #{@extras}.\n\n")
                            break
    
                    elsif   @extras == 2
                            @extras = "honey and let it sit on the top"
                            newarray.push("Add #{@extras}.\n\n")
                            break
    
                    elsif   @extras == 3
                            @extras = "chocolate powder and stir it in to add a delicous chocolate flavour"
                            newarray.push("Add #{@extras}.\n\n")
                            break
    
                    elsif   @extras == 4
                            @extras = "Sprinkle chocolate flakes onto the top of the coffee"
                            newarray.push("#{@extras}.\n\n")
                            break
    
                    elsif   @extras == 5
                            break
    
                    else
    
                end
            end
    
    
            #The array's elements will be counted with a counter. From there the counter and the elements will be pushed into a hash.
            #This will ensure that every part of the recipe will have a corresponding step number E.g. 1 => Add soy milk etc.
            newarray.push("Enjoy!\n\n")
            counter = 0
            newhash = {}
                newarray.each do 
                    |item|
                    counter += 1
                    newhash[counter] = item
                end
    
    
            #The hash will be iterated through, so 1 = Add milk, 2 = Add coffee etc. By doing so will display the recipe to the user.
            system('clear')
            puts "\nThe recipe for making your custom coffee is:\n\n"
                newhash.each do |k, v|
                    puts "Step #{k}: #{v}\n\n"
                end
    
    
            #This will allow the user to save their recipe.
            #If the user opts to save their recipe they will be asked to give it a name.
            #By doing so the recipe will be added to the coffee_recipes array.
            puts "\n\nType 'SAVE' to save this recipe to the recipe list, or press Enter to return to the main menu\n\n"
            save = gets.chomp
            save.downcase!
                if save == "save"
                    system('clear')
                    puts "\n\n\nPlease enter a name for your coffee creation\n\n"
                    coffeename = gets.chomp
                    temphash = {}
                    temphash[coffeename] = newhash
                    @coffee_recipes.push(temphash)
                    puts "\n\nReceipe for #{coffeename.capitalize} added! Press Enter to continue\n\n"
                    finishCreate = gets.chomp
                end
            end
    
    
    
        #This is the second method in the program. The READ method.
        def readTheList
    
    
            #Gives the user a list of recipes and prompts them to choose one to read.
            system('clear')
            puts "\n\n\nChoose a recipe from the list:\n\n\n\n"
                coffee_recipes.each do |x|
                    x.each do |k,v|
                        puts "#{k.capitalize}\n\n\n"
                    end
                end
    
    
            choiceList = gets.chomp
            choiceList.downcase!
    
    
            #When a user enters a value that matches one of the name values from the coffee_recipes array
            #this part will then iterate through the array and display the recipe steps in a string
            @coffee_recipes.each do |x|
                x.each do |k, v|
                    if k.include? choiceList
                        system('clear')
                        puts "\n\n\nTo make a #{k.capitalize}:\n\n\n\n"
                        v.each do |x,y|
                            puts "Step #{x}: #{y}\n"
                        end
                    end
                end
            end
    
            puts "\n\nPress Enter to continue"
            cont = gets.chomp
        end
    
    
    
        #This is the third method in the program. The UPDATE method.
        def updaterecipe
    
    
            #Gives the user a list of recipes and prompts them to choose one to update.
            system('clear')
            puts "\n\n\nSelect which coffee you want to update:\n\n\n"
                @coffee_recipes.each do |x|
                    x.each do |k,v|
                        puts "#{k.capitalize}\n\n\n"
                    end
                end
    
    
            choiceupdate = gets.chomp
            choiceupdate.downcase!
    
    
                #When a user enters a value that matches one of the name values from the coffee_recipes array
                #this part will then iterate through the array and update the selected element.
                system('clear')
                @coffee_recipes.each do |x|
                    x.each do |k,v|
                        if k.include? choiceupdate
                            puts "\n\n\nThe steps for the #{k.capitalize} recipe are as follows:\n\n\n\n"
                            v.each do |a,b|
                                puts "Step #{a} is #{b}\n"
                            end
                            #The user will then be prompted to choose one of the steps by typing its number in
                            puts "\n\nPlease enter the number of the step you want to change"
                            stepchange = gets.chomp
                                v.each do |a,b|
                                    if stepchange == "#{a}"
                                        #The user will be prompted to change the value of the step, which will then be saved
                                        puts "\n\nType in the new step\n\n"
                                        string = gets.chomp + "\n\n"
                                        v[a] = string
                                    end
                                end
                            end
                        end
                    end
                    puts "\n\nPress Enter to continue"
                    prompt3 = gets.chomp
                end
    
    
    
        #This is the last method in the program, the DELETE method.
        def deleteItem
    
    
            #Gives the user a list of recipes and prompts them to choose one to delete.
            system('clear')
            puts "\n\n\nSelect which coffee you want to delete:\n\n\n"
                coffee_recipes.each do |x|
                    x.each do |k,v|
                        puts "#{k.capitalize}\n\n\n"
                    end
                end
    
    
            choicedelete = gets.chomp
            choicedelete.downcase!
    
                
                #When a user enters a value that matches one of the name values from the coffee_recipes array
                #this part will then iterate through the array and delete the selected element
                @coffee_recipes.each do |x|
                    if x.include? choicedelete
                        @coffee_recipes.delete(x)
                        puts "\n\nRecipe: Deleted\n\n\n\n"
                    end
                end
        
    
            puts "Press Enter to continue\n\n"
            prompt = gets.chomp
        end
    end