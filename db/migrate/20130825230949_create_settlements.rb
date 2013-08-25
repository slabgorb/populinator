class CreateSettlements < ActiveRecord::Migration
  def change
    create_table :settlements do |t|
      t.string :icon
      t.string :color
      t.string :name
      t.integer :language_id
      t.string :ancestry

      t.timestamps
    end
  end
end
