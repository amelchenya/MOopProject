class CreateCharacteristics < ActiveRecord::Migration[5.2]
  def change
    create_table :characteristics do |t|
      t.string :name
      t.string :about
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
