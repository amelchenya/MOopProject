class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :body
      t.string :picture
      t.text :about
      t.integer :cost
      t.string :url

      t.timestamps
    end
  end
end
