class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.text :title
      t.text :author
      t.string :state

      t.timestamps null: false
    end
    add_index :books, :title
    add_index :books, :author
    add_index :books, :state
  end
end
