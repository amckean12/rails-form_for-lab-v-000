class SchoolClassesController < ApplicationController
  def create
    @school_class = SchoolClass.new(post_params)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end
end
