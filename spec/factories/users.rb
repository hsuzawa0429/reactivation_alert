FactoryBot.define do
  factory :user do
    facility_code         {"KI200404"}
    user_name             {'須沢啓之'}
    email                 {'test@test.com'}
    password              {'test2021'}
    password_confirmation {password}
    affiliation        {'消化器内科'}
  end
end