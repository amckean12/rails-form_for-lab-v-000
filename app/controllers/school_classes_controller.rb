class SchoolClassesController < ApplicationController
  def create
    @school_class = SchoolClass.new(school_class_params)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end


	def edit
	  @school_class = SchoolClass.find(params[:id])
	end

  private

  def school_class_params
	  params.require(:school_class).permit(:title, :room_number)
	end
end
