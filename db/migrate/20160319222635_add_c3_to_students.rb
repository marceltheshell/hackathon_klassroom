class AddC3ToStudents < ActiveRecord::Migration
  def change
    add_column :students, :c3, :integer
  end
end
