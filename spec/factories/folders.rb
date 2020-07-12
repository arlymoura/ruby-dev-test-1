FactoryBot.define do
  factory :folder do
    name { Faker::Name.middle_name }
    parent { nil }
  end
end
