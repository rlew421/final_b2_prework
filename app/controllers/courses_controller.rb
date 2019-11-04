class CoursesController < ApplicationController
  def show
    @course = Course.find(params[:course_id])
    @students = @course.sort_students_by_grade
  end
end
