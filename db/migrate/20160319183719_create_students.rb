class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :ethnicity
      t.references :klass, index: true

      t.timestamps null: false
    end
    add_foreign_key :students, :klasses
  end
end
