class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.string :commenter
      t.string :title
      t.text :body
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
