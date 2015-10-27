class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :gender
      t.references :place, index: true

      t.timestamps
    end
  end
end
