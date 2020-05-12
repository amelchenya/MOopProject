class CreateBoughts < ActiveRecord::Migration[5.2]
  def change
    create_table :boughts do |t|
      t.string :name
      t.string :number_tel
      t.string :street
      t.string :payment
      t.string :deliver
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
