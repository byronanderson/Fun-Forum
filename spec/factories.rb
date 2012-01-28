FactoryGirl.define do
  sequence :name do |n|
    "Test Name #{n}"
  end

  sequence :email do |n|
    "email#{n}@somedomain.com"
  end

  factory :user do
    username { name }
    password "abc123"
    password_confirmation  { password }
    email
  end
end
