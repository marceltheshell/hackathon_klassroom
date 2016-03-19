class Klass < ActiveRecord::Base
	has_many :seating_charts
	has_many :students
	belongs_to :user
end
