class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :you_are
      t.string :looking_for
      t.string :locaction
      t.string :company
      t.string :industry
      t.text :description
      t.text :requirements
      t.string :prodect_cycle
      t.integer :salary
      t.integer :equity

      t.timestamps null: false
    end
  end
end
