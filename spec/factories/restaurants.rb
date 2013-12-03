# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :restaurant do
    name "Restaurant"
    description "MyText"
    owner_email "a@a.com"
  end
end
