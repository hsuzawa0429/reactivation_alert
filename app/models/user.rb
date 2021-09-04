class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :facility_code, inclusion: { in: ["KI200404"]}
    validates :user_name, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
    validates :affiliation
  end

  validates :password, format: { with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]/ }
  validates :email, uniqueness: true
end
