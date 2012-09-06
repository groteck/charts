class CreateElementRanges < ActiveRecord::Migration
  def change
    create_table :element_ranges do |t|
      t.decimal :max
      t.decimal :min

      t.timestamps
    end
  end
end
