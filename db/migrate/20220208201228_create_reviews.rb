class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :restaurant, null: false, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
