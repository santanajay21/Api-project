class Cli
     
     def call
     
          hello
          menu 
          
          

     end

     def ask_user_for_meal
          puts "Enter meal you are looking for."
          user_response = gets.chomp
          Api.start(user_response)
     end

     def hello
      puts "Hello there, Welcome in !"
     
     end

     def menu 
          puts "Would you like to type in the food you are looking for?"
          puts "Type 'yes to continue or anything else to exit."
          user_input = gets.strip
          if user_input == "yes"
               puts "Great, here you go!"
               #binding.pry 
               ask_user_for_meal
               display_list_of_foods
               ask_user_for_meal_choice
               sleep(1)
               menu
          else 
               puts "Have a great day! "
          end
     end


          def display_list_of_foods
               Meals.all.each.with_index(1) do |meal,index|
                    
                      puts "#{index}. #{meal.name}"
               end
          end

          def ask_user_for_meal_choice
               #ask user for a choice 
               index = gets.strip.to_i - 1

               #validate their input
               max_limit = Meals.all.length - 1
               until index.between?(0,max_limit)
                    puts "Sorry that is an invalid choice.Please type a valid number."
                    index = gets.strip.to_i - 1
               end

               #found their meal choice
               meal_instance = Meals.all[index]
               #binding.pry
          #call the mwthod that will print info
               display_meal_detail(meal_instance)
          end

          def display_meal_detail(meal)
               puts "\n"
               puts meal.name
               puts "\ncategory:" + meal.category
               puts "\ninstructions:" + meal.instuctions
                    
          end

     
     

end 