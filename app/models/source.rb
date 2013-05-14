class Source < ActiveRecord::Base
  has_many :hourlies
  belongs_to :parent
  after_create { hourlies.create(timestamp: Time.now.beginning_of_hour) }
end
