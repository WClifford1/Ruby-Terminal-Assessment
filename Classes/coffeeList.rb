
class Coffee

    def read


        system('clear')


        #The current recipes are stored as nested hashes in an array called recipeList
        #The fist key of the hash has the value which is a hash of the whole recipe.
        system('clear')

        
        recipeList = [ { "flat white" => { "1" => "Add hot milk\n\n", "2" => "Add amount of coffee sachets to your choosing\n\n", "3" => "Add sugar or sweetener as desired\n\n", "4" => "Enjoy\n\n"}} ,
        { "cappuccino" => { "1" => "Add hot milk\n\n", "2" => "Add amount of coffee sachets to your choosing\n\n", "3" => "Stir the milk vigorously until there is froth on the top\n\n", "4" => "Put chocolate spinkles on the top.\n\n", "5" => "Enjoy\n\n"}} ,
        { "espresso" => { "1" => "Add a quater of a mug of hot water\n\n", "2" => "Add one full serve of coffee\n\n", "3" => "Stir gently until black\n\n", "4" => "Enjoy\n\n"}}]
        

        #Prompts the user of a recipe to choose from
        puts "Choose a recipe from the list:\n\nFlat White\n\nCappuccino\n\nEspresso\n\n"
        choiceList = gets.chomp
        choiceList.downcase!


        #When a user enters a value that matches one of the name values from the array -
        #This part will iterate through the array and display the recipe steps in a string.
        recipeList.each do |subhash|
            subhash.each do |k, v|
                if k.include? choiceList
                    puts "To make a #{k.capitalize}:\n\n"
                    v.each do |x,y|
                        puts "Step #{x}: #{y}"
                    end
                end
            end
        end
    end
end
