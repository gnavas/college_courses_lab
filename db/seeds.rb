# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.delete_all
Course.delete_all
Enrollment.delete_all
George = Student.create(name:"George Navas", age:27)
Econ_101 = Course.create(name:"Econ 101")
Michelle = Student.create(name:"Michelle Navas", age:29)
Calculus_250 = Course.create(name:"Calculus 250")
Nicole = Student.create(name:"Nicole Navas", age:26)
Psychology_100 = Course.create(name: "Psychology 100")
Enrollment.create(student_id: George.id, course_id: Econ_101.id)
Enrollment.create(student_id: George.id, course_id: Calculus_250.id)
Enrollment.create(student_id: Nicole.id, course_id: Econ_101.id)
Enrollment.create(student_id: Nicole.id, course_id: Psychology_100.id)
Enrollment.create(student_id: Michelle.id, course_id: Calculus_250.id)
Enrollment.create(student_id: Michelle.id, course_id: Psychology_100.id)