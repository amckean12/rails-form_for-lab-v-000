class SchoolClassesController < ApplicationController
  def create
    @school_class = SchoolClass.new(school_class_params)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def new
    @school_class = SchoolClass.new
  end 

  private

  def school_class_params
	  params.require(:school_class).permit(:title, :room_number)
	end
end
