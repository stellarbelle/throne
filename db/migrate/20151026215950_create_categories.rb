class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :amenities
      t.references :place, index: true

      t.timestamps
    end
  end
end
