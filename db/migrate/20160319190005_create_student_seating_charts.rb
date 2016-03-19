class CreateStudentSeatingCharts < ActiveRecord::Migration
  def change
    create_table :student_seating_charts do |t|

      t.timestamps null: false
      t.references :student, index: true
      t.references :seating_chart, index: true
    end
  end
end
