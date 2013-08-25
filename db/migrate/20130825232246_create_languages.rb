class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.integer :lookback
      t.string :description

      t.timestamps
    end
  end
end
