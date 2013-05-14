require 'spec_helper'

describe Hourly do
  subject { FactoryGirl.create(:hourly) }
  it { should validate_uniqueness_of(:timestamp).scoped_to(:source_id) }
end
