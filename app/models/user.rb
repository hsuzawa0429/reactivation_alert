class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :facility_code, format: { with: /\A[a-zA-Z0-9]+\z/ }
    validates :user_name, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
    validates :email, {format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: { case_sensitive: false }}
    validates :password, format: { with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]/ }
    validates :affiliation
  end
  validates :facility_code, inclusion: { in: ["KI200404"]}
end
