class SeatingChart < ActiveRecord::Base
	belongs_to :klass
	has_many :students, :through => :student_seating_charts
end
