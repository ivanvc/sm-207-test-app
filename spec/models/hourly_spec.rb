require 'spec_helper'

describe Hourly do
  subject { FactoryGirl.create(:hourly) }
  before(:each) { puts subject.source.hourlies.inspect }
  it { should validate_presence_of(:timestamp) }
  it { should validate_presence_of(:source_id) }
  it { should validate_uniqueness_of(:timestamp).scoped_to(:source_id) }
end
