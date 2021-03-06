class StudentsController < ApplicationController
def edit
  @student = Student.find(params[:id])
end

def new
  @student = Student.new
end

def index
  @students = Student.all
end

def show
  @student = Student.find(params[:id])
  @courses = Course.all
end

def create
  @student = Student.new student_params
  if @student.save
    redirect_to students_path
  else
    render :new
  end  
end

def update
  @student = Student.find(params[:id])
  @student.update_attributes student_params
if @student.save
  redirect_to student_path(@student)
else
  render :edit  
end  
end

def destroy
  student = Student.find(params[:id])
  student.destroy
  redirect_to students_path
end

private

def student_params
params.require(:student).permit(:name, :age)
end  
end