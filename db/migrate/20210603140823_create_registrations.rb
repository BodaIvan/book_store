class CreateRegistrations < ActiveRecord::Migration[6.1]
  def change
    create_table :registrations do |t|
      t.references :books, index: true
      t.string :full_name
      t.string :company
      t.string :email
      t.string :telephone
      t.timestamps
    end
  end
end
