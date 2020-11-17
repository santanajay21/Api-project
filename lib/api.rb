


class Api

    def self.start(meal)
        url = "https://www.themealdb.com/api/json/v1/1/search.php?s=#{meal}"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        #binding.pry
        array_of_meals = hash["meals"]
        array_of_meals.each do |meal|
           Meals.new(meal["idMeal"],meal["strMeal"],meal["strCategory"],meal["strInstructions"])

            #binding.pry

        end
        #binding.pry

       
    end


end