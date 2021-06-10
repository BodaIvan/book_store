class CreatePositions < ActiveRecord::Migration[6.1]
  def up
    create_table :positions do |t|
      t.integer :cart_id
      t.integer :book_id
      t.integer :quantity
      t.timestamps
    end
    drop_table :books_carts
  end
end
