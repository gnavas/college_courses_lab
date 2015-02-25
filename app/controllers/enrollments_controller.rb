class EnrollmentsController < ApplicationController
skip_before_action :verify_authenticity_token
    def add_student
    course_id = params[:id]
    student_id = params[:student_id]
    @course = Course.find(course_id)
    @enrollment = Enrollment.create(course_id: course_id, student_id: student_id)
    redirect_to course_path(@course)
    end

    def add_course
    student_id = params[:id]
    course_id = params[:course_id]
    @student = Student.find(student_id)
    @enrollment = Enrollment.create(course_id: course_id, student_id: student_id)
    redirect_to student_path(@student)
    end

    def destroy_student
    @course = Course.find(params[:id])
    student = Enrollment.find_by(student_id: params[:student_id])
    student.destroy
    redirect_to course_path(@course)  
    end

    def destroy_course
    @student = Student.find(params[:id])
    course = Enrollment.find_by(course_id: params[:course_id])
    course.destroy
    redirect_to student_path(@student)  
    end

end
