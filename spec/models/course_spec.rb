require 'rails_helper'

RSpec.describe Course, type: :model do
  describe "validations" do
    it { should validate_presence_of :name}
  end

  describe "relationships" do
    it { should have_many :course_students }
    it { should have_many(:students).through(:course_students)}
  end

  describe "instance methods" do
    it "sort_students_by_grade" do
      course = Course.create!(name: "Charms")

      student_1 = Student.create!(name: "Harry Potter")
      student_2 = Student.create!(name: "Ron Weasley")
      student_3 = Student.create!(name: "Hermione Granger")
      student_4 = Student.create!(name: "Luna Lovegood")
      student_5 = Student.create!(name: "Neville Longbottom")

      course.course_students.create!(student: student_1, course: course, grade: 85.5)
      course.course_students.create!(student: student_2, course: course, grade: 78.4)
      course.course_students.create!(student: student_3, course: course, grade: 97.5)
      course.course_students.create!(student: student_4, course: course, grade: 92.3)
      course.course_students.create!(student: student_5, course: course, grade: 71.2)
      
      expect(course.sort_students_by_grade.first).to eq(student_3)
      expect(course.sort_students_by_grade[1]).to eq(student_4)
      expect(course.sort_students_by_grade[2]).to eq(student_1)
      expect(course.sort_students_by_grade[3]).to eq(student_2)
      expect(course.sort_students_by_grade[4]).to eq(student_5)
    end
  end
end
