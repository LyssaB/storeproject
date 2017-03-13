FactoryGirl.define do
  factory :comment do
    body "sample comment"
    rating 3
    user
    product
  end
end