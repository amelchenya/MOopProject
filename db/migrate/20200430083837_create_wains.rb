class CreateWains < ActiveRecord::Migration[5.2]
  def change
    create_table :wains do |t|
      t.string :name
      t.string :image
      t.integer :count
      t.integer :id_product
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
