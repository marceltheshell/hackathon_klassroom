class CreateStudentCriteria < ActiveRecord::Migration
  def change
    create_table :student_criteria do |t|

      t.timestamps null: false
      t.integer :criteria_value
 	  	t.references :criteria, index: true
      t.references :student, index: true
    end
  end
end
