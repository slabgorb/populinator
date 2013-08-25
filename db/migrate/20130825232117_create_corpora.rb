class CreateCorpora < ActiveRecord::Migration
  def change
    create_table :corpora do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
