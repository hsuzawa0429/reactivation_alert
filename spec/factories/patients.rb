FactoryBot.define do
  factory :patient do
    patient_code           {"A012345"}
    gender_id              {'2'}
    age_id                 {'2'}
    department_id          {'2'}
    drug_id                {'2'}
    monitoring_interval_id {'2'}
    inspection_date        {"2021-09-06"}
  end
end
