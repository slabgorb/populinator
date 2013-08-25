class CreateBeings < ActiveRecord::Migration
  def change
    create_table :beings do |t|
      t.string :surname
      t.string :given_name
      t.integer :age
      t.boolean :alive
      t.string :title
      t.string :gender
      t.string :ancestry

      t.timestamps
    end
  end
end
