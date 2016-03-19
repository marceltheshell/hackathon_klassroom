class CreateSeatingCharts < ActiveRecord::Migration
  def change
    create_table :seating_charts do |t|
      t.string :name
      t.references :klass, index: true

      t.timestamps null: false
    end
  end
end
