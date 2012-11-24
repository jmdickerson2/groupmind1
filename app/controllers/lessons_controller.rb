class LessonsController < ApplicationController
  def index
  	@lessons = Lesson.all 
  end

  def show
  	@lessons = Lesson.find(params[:id])
  end

  def new
    @courses = Course.find(params[:course_id])
    @lessons = Lesson.new
  end

  def create
    @course = Course.find(params[:course_id])
    @lesson = @course.lessons.new(params[:lesson])
    if @lesson.save
      redirect_to @course
    end
  end

  def edit
  end

end
