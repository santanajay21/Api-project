class Meal

    attr_accessor :id, :name, :category, :instuctions
    
    @@all =[]

    # def name 
    #     @name
    # end

    # def name=(name) 
    #     @name = name 
    # end
    
    def initialize(id,name,category,instuctions)
        @id = id
        @name = name 
        @category = category
        @instuctions = instuctions
        #binding.pry
        
        @@all << self
    end
    
    def self.all
        @@all
    end
    #binding.pry
    def self.clear
        @@all = []
    end
    
    def self.sort
       @@all.sort_by{|meal| meal.name} 
    end


end
