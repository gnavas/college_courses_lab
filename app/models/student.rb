class Student < ActiveRecord::Base
  validates :name, presence: true 
  validates :age, presence: true, numericality: true 
  has_many :enrollments
  has_many :courses, through: :enrollments
end
