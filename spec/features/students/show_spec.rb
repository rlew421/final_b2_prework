require 'rails_helper'

RSpec.describe "student show page" do
  describe "as a user" do
    it "I can see a student's
      - name
      - name of each course that student is enrolled in
      - the student's grade for each course" do

    student = Student.create!(name: "Harry Potter")
    course_1 = Course.create!(name: "Charms")
    course_2 = Course.create!(name: "Potions")

    course_1.course_students.create!(student: student, course: course_1, grade: 91.7)
    course_2.course_students.create!(student: student, course: course_2, grade: 76.4)

    visit "/students/#{student.id}"

    expect(page).to have_content(student.name)

      within "#course-#{course_1.id}" do
        expect(page).to have_content("Charms")
        expect(page).to have_content("Grade: 91.7")
      end

      within "#course-#{course_2.id}" do
        expect(page).to have_content("Potions")
        expect(page).to have_content("Grade: 76.4")
      end
    end
  end
end
