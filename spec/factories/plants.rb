FactoryBot.define do
  factory :plant do
    name { "MyString" }
    frequency { 1 }
    amount { 1 }
    measure { "MyString" }
    location { "MyString" }
    garden { nil }
  end
end
