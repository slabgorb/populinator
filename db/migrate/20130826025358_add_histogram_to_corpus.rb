class AddHistogramToCorpus < ActiveRecord::Migration
  def change
    add_column :corpora, :histogram, :text
  end
end
