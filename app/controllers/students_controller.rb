class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students
    end 
    def grades
        g = Student.order("grade").reverse
        render json: g
    end
    def highest_grade
        g = Student.order("grade").reverse.first
        render json: g
    end 
end
