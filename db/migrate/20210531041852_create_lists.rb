class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.date :learning_date
      t.text :learning_target
      t.text :learning_record
      t.string :category
      t.decimal :learning_time
      t.string :book_title
      t.integer :book_image
      t.integer :user_id
      t.timestamps
    end
  end
end
