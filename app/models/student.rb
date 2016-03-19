class Student < ActiveRecord::Base
	has_many :seating_charts, :through => :student_seating_charts
	belongs_to :klass
	has_many :criteria, :through => :student_criterium 

end
