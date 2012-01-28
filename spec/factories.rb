FactoryGirl.define do
  sequence :email do |n|
    "email#{n}@somedomain.com"
  end

  factory :user do
    sequence :username do |n|
      "test_#{n}_username"
    end
    password "abc123"
    password_confirmation  { password }
    email
  end
end
