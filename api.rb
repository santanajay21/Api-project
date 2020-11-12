#set up like a class
#responsible for talking with our api
require 'pry'
class Api

    attr_accessor :api_response 

    def self.start  
        url = "http://www.recipepuppy.com/api/?i=onions,garlic&q=omelet&p=3"
        uri = URI(url)
        response = Net::HTTP.get (uri)
        @api_response = JSON.parse(response)
        binding.pry 
    end 

    def self.api_results
        @api_response 
    end 
end 
