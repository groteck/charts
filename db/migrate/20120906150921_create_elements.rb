class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      t.string :name
      t.integer :element_range_id

      t.timestamps
    end
  end
end
