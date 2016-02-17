class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :you_are
      t.string :looking_for
      t.string :location
      t.string :company
      t.string :industry
      t.text :description
      t.text :requirements
      t.string :product_cycle
      t.string :salary
      t.string :equity

      t.timestamps null: false
    end
  end
end
