class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :text
      t.integer :rating
      t.references :restaurants, foreign_key: true

      t.timestamps
    end
  end
end