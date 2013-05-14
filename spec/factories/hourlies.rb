FactoryGirl.define do
  factory :hourly do
    source
    timestamp { Time.at(rand(1_000_000_000)) }
  end
end
