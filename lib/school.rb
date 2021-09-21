# code here!
require 'pry'

class School 
    def initialize(school)
        @school = school
        @roster = {}
    end

    def roster 
        @roster 
    end

    def add_student(student, grade)
   
        @student = student
        @grade = grade 

        if @roster.has_key?(grade) #returns true if the given key is present
            @roster[@grade] << @student
        else
             @roster[@grade] = []
             @roster[@grade] << @student
        end
    end
    

    def grade(num)
        @roster.values_at(num).flatten  #values_at(key...)-> array returns an array containing the values associated with the given keys 
    end 


    def sort
        hash = {}
        @roster.each do |grade, student_hash| 
            hash[grade] = student_hash.sort
        end
        hash
    end
   
end 

