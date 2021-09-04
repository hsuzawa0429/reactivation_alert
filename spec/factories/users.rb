FactoryBot.define do
  factory :user do
    facility_code         {'AB12345678'}
    user_name             {'須沢啓之'}
    email                 {'test@example'}
    password              {'nyanchuu2002'}
    password_confirmation {password}
    affiliation           {'消化器内科'}
  end
end