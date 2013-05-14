class Hourly < ActiveRecord::Base
  attr_accessible :timestamp
  validates :timestamp, uniqueness: { scope: :source_id }
  belongs_to :source
end
