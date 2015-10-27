class CreatePlaceTypes < ActiveRecord::Migration
  def change
    create_table :place_types do |t|
      t.references :type, index: true
      t.references :place, index: true

      t.timestamps
    end
  end
end
