class AddPartNumberToWains < ActiveRecord::Migration[5.2]
  def change
    add_reference :wains, :product, foreign_key: true
  end
end
