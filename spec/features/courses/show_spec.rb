require 'rails_helper'

RSpec.describe "course show page" do
  describe "as a user" do
    it "I can see:
    - a course's name
    - each student in the course listed in order from highest grade to lowest grade" do

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

    visit "/courses/#{course.id}"
    
    expect(page).to have_content(course.name)
    expect(page).to have_content(student_3.name)
    expect(page).to have_content(student_4.name)
    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_2.name)
    expect(page).to have_content(student_5.name)
    end
  end
end
