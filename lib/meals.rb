class Meals

    attr_accessor :id, :name, :category, :instuctions

    @@all =[]

    def initialize(id,name,category,instuctions)
        @id = id
        @name = name 
        @category = category
        @instuctions = instuctions
        #binding.pry
        
        @@all <<self
    end
    
    def self.all
        @@all
    end
    #binding.pry



end
