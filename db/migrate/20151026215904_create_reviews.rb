class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :stars
      t.references :user, index: true
      t.references :place, index: true

      t.timestamps
    end
  end
end
