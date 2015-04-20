class CreateCorpora < ActiveRecord::Migration
  def change
    create_table :corpora do |t|
      t.integer :language_id
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
