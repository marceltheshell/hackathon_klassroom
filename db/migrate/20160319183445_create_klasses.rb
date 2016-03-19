class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
    	t.string :name
      t.timestamps null: false
      t.references :user, index: true
    end
  end
end
