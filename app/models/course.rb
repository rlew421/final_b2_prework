class Course < ApplicationRecord
  validates_presence_of :name
  has_many :course_students
  has_many :students, through: :course_students

  def sort_students_by_grade
    Student.joins(:course_students).order("grade desc")
  end
end
