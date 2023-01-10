class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students
    end

    def grades
        students = Student.all
        sort_by_grade_desc = students.sort_by {|student| student.grade}.reverse!
        
        render json: sort_by_grade_desc
    end
end
