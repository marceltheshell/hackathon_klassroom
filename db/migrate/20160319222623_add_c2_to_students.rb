class AddC2ToStudents < ActiveRecord::Migration
  def change
    add_column :students, :c2, :integer
  end
end
