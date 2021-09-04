class Patient < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :gender
  belongs_to_active_hash :age
  belongs_to_active_hash :department
  belongs_to_active_hash :drug
  belongs_to_active_hash :monitoring_interval

  with_options presence: true do
    validates :patient_code
    validates :inspection_date
  end

  with_options numericality: { other_than: 1 , message: "can't be blank"} do
    validates :gender_id
    validates :age_id
    validates :department_id
    validates :drug_id
    validates :monitoring_interval_id
  end
end
