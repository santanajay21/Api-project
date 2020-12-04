


class Api

    def self.start(meal)
        url = "https://www.themealdb.com/api/json/v1/1/search.php?s=#{meal}"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        #binding.pry
        array_of_meals = hash["meals"] 
        if array_of_meals == nil
           false
        else     
            array_of_meals.each do |meal|
                Meal.new(meal["idMeal"],meal["strMeal"],meal["strCategory"],meal["strInstructions"])
            end 
            true 
        end
            #binding.pry
    end
 
      
    



end