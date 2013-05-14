class Hourly < ActiveRecord::Base
  attr_accessible :timestamp
  validates :timestamp, uniqueness: { scope: :source_id }, presence: true
  validates :source_id, presence: true
  belongs_to :source
end
