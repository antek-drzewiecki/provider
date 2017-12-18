FactoryGirl.define do
  factory :post do
    sequence :title do |n|
      "A Random post #{n}"
    end
    body { Faker::Lorem.sentence }

  end
end