require 'ffaker'

FactoryGirl.define do
  factory :item do
    name { FFaker::Product.product}
    price { rand(9999) + 1 }
  end
end
