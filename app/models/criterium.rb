class Criterium < ActiveRecord::Base
	has_many :students, :through => :student_seating_charts
end
