class AddC3ToKlasses < ActiveRecord::Migration
  def change
    add_column :klasses, :c3, :string
  end
end
