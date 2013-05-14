# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :parent do
    after(:create) do |parent, _|
      create(:source, parent: parent)
    end
  end
end
