#Purpose
The purpose of this app is to show how to create a coffee list and/or create your own coffee. Can also update or delete these coffee lists where applicable


#Functionality
The app has create, read, update and delete functionality. The app uses two classes. The CoffeeApp class has the title screen which greets the user upon running the app, and the main menu from which the user chooses a method for the app to execute. The main menu is set to loop, this is so that the user has to enter their input as a valid command.


The methods are stored in a seperate class named CoffeeMenu which is saved to a seperate file. The CoffeeMenu class also populates the list of recipes.


The create method asks a series of questions. Each question loops to ensure the user can only select a valid option. Once the user has finished the questions they are given the option to save their new class. The method will update the recipe list if the user chooses to save and the user will be returned to the main menu.


The read method does not have a loop due to time constraints, this is a vulnerability as it allows the user to select an option which is not valid, eg entering input which does not correspond to a recipe name. If the user inputs an invalid option then the method will simply display the last recipe in the list.


The update method is looped so that the user has to enter a valid option eg a name of an existing recipe or the method will not run and the user will be returned to the main menu. A constraint is that a specifc error message is not displayed if the user does not choose a valid option.


The delete method is also looped so that the user has to enter a valid option or the method will not run and the user will be returned to the main menu. A constraint is that a specifc error message is not displayed if the user does not choose a valid option.



#Instruction for use
1. To run the app run CoffeeApp.rb from the src folder.
2. To view the slide presentation in pdf format open terminalapplicationslides.pdf from the ppt folder.
3. To view the work flowchart and testing spreadsheet open the files in the docs folder.
4. To view Trello screenshots open the Trello Screenshots folder from the docs folder.
5. To view the app screenshots open the App Screenshots folder from the docs folder.
6. To view files of brainstorming screenshots open the Brainstorm Screenshots folder.


When the application is first started up you will be greeted with a main menu which you will be able to pick from 5 options to choose from:


1. Create a new recipe list
2. Display and read existing recipes
3. Update or edit an item from the coffee list
4. Remove or delete an item from the coffee list
5. Exit the app


If create coffee is chosen by pressing 1 from the main menu, the user will be asked a series of questions on what you want to add. Milk? Strength? Froth? Syrup? Extra? The answers to these questions are used to build a custom recipe for the user. The user will be given the option to name and save their newly built recipe.


If display recipes is chosen by pressing 2 from the main menu, the user will be prompted to choose the name of one of the receipes that is currently stored. The app comes with 3 already stored but you can add or delete as many as you like with the create and delete functions. Once the user has chosen the name of a recipe the app will display the recipe name and steps.


If update is chosen by pressing 3 from the main menu, the user will be prompted to choose the name of one of the recipes. The user will then be shown the steps of the recipe which have a corresponding step number. The user will be prompted to choose a step number and will then be able to modify that step. The modified step is then saved.


If delete is chosen by pressing 4 from the main menu, the user will be prompted to choose the name of one of the recipes. After selecting one of the recipes it is then deleted from the list.


If exit is chosen by typing 'exit' from the main menu the app will terminate.


#Screenshots
link to screenshots --> 
![alt text](https://ibb.co/BGKHbvZ "Landing page")
![alt text](https://ibb.co/z2TZmJy "main menu")