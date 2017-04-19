FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@music.com"}
    password "paganini"
    first_name "Niccolo"
    last_name "Paganini"
  end

  factory :admin, class: User do
    sequence(:email) { |n| "user#{n}@music.com"}
    password "paganini"
    first_name "Admin"
    last_name "Istrator"
    admin true
  end  
end