FactoryBot.define do
  factory :plant do
    name { "MyString" }
    frequency { 1 }
    amount { 1 }
    unit_of_measure { "MyString" }
    location { "MyString" }
    garden { nil }
  end
end
