# code here!
class School

    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if roster[grade] 
            roster[grade] << name
        else
            roster[grade] = [name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted = @roster.sort_by { |grade, name| grade }
        sorted_roster = {}
        sorted.each do |grade| 
            sorted_roster[grade[0]] = grade[1].sort
        end
        return sorted_roster
    end

end
