class AddC1ToKlasses < ActiveRecord::Migration
  def change
    add_column :klasses, :c1, :string
  end
end
