class StudentsController < ApplicationController
  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
