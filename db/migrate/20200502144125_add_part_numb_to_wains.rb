class AddPartNumbToWains < ActiveRecord::Migration[5.2]
  def change
    add_column :wains, :cost, :integer
  end
end
