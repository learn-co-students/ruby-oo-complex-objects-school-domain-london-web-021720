# coclasde here!
require 'pry'
class School 
   
   attr_accessor :roster
    
    def initialize(name)
    @roster = {}
    @school_name = name 
    end 

    def add_student(name, grade)
        #need to add multiple arrays with each grade that it is assoiciated with 
    #    switch = false  
        
    #     # array = []
    #     # array << name
    #   @roster.each do|key,value| 
    #     if key == grade
    #         switch = true 
    #     end
    #     end 


    
        if !@roster[grade]
            @roster[grade] = [name]
        else 
            @roster[grade] << name
        end
    end

    def grade(grade)
      found_grade = @roster.select{|key, value|
            key == grade
          }

        found_grade[grade]
    end

    def sort
        sort_students = {}
        @roster.each do |key, value| 
                        sort_students[key] = value.sort
                     end
      sort_students.sort.to_h
    end
    

end 