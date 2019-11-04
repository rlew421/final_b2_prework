# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
