class AddC2ToKlasses < ActiveRecord::Migration
  def change
    add_column :klasses, :c2, :string
  end
end
