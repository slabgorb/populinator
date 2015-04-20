class Language < ActiveRecord::Base
  has_many :corpora
  accepts_nested_attributes_for :corpora, allow_destroy: true
  validates :lookback, presence: true
  validates :name, presence: true
  after_initialize do
    self.lookback = '2' if self.new_record?
  end
end
