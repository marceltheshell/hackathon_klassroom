class AddC1ToStudents < ActiveRecord::Migration
  def change
    add_column :students, :c1, :integer
  end
end
