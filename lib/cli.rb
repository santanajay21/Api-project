class Cli
     
     def call
          hello
          menu 
     end


     def ask_user_for_meal
          puts "Enter meal you are looking for."
          user_response = gets.chomp
          unless Api.start(user_response)
               puts "That didn't work, lets try again."
               ask_user_for_meal
          end
     end

     

     def hello
          puts "\n"
          puts "Hello there, Welcome in !"
          puts  "\n"
     
     end

     def menu 
          puts "Would you like to type in the food you are looking for?"
          puts "Type 'yes to continue or anything else to exit."
          user_input = gets.strip
          if user_input == "yes"
               puts "\n"
               puts "Great, here we you go!"
               #binding.pry 
               ask_user_for_meal
               display_list_of_foods
               ask_user_for_meal_choice
               sleep(1)
               Meal.clear
               menu
          else 
               puts "Have a great day! "
          end
     end


     def display_list_of_foods 
          my_arr = Meal.all.each.with_index(1) do |meal,index|  
               puts "#{index}. #{meal.name}"
          end 
          #binding.pry
     end

     
     def ask_user_for_meal_choice
          #ask user for a choice 
          index = gets.strip.to_i - 1

          #validate their input
          max_limit = Meal.all.length - 1
          until index.between?(0,max_limit)
               puts "Sorry that is an invalid choice.Please type a valid number."
               index = gets.strip.to_i - 1
          end

          #found their meal choice
          meal_instance = Meal.all[index]
          #binding.pry
           #call the mwthod that will print inf0
          display_meal_detail(meal_instance)
     end

     def display_meal_detail(meal)
          puts "\n"
          puts meal.name
          puts "\ncategory:" + meal.category
          puts "\ninstructions:" + meal.instuctions
                    
     end

     
     

end 