# code here!

class School

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def roster
        if @roster
            return @roster
        else
            @roster = {}
            return @roster
        end
    end

    def add_student(name, x)

        if @roster
            if @roster[x]
                @roster[x] << name
            else
                @roster[x] = []
                @roster[x] << name
            end
        else
            @roster = {}
            if @roster[x]
                @roster[x] << name
            else
                @roster[x] = []
                @roster[x] << name
            end
        end
        @roster
    end

    def grade(x)
        @roster[x]
    end

    def sort
        @roster.each { |grade, name| name.sort! }
        @roster
    end

    def self.all
        @@all
    end

end
