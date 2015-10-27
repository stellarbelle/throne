class CreatePlaceCategories < ActiveRecord::Migration
  def change
    create_table :place_categories do |t|
      t.references :place, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
