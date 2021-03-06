class StudentsController < ApplicationController
  # before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  # private

    # def set_student
    def activate
      @student = Student.find(params[:id])

      @student.active ^= true
      @student.save
      redirect_to student_path(params[:id])


    end
end
