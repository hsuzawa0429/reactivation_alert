# README

# テーブル設計
## users テーブル
| column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| facility_code      | string  | null: false |
| user_name          | string  | null: false |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| affiliation        | string  | null: false |

## Association
- has_many: patients

## patients テーブル
| column                 | Type    | Options                   |
| ---------------------- | ------- | ------------------------- |
| patient_code           | integer | null: false, unique: true |
| gender_id              | integer |                           |
| age_id                 | integer |                           |
| department_id          | integer | null: false               |
| drug_id                | integer | null: false               |
| monitoring_interval_id | integer | null: false               |
| inspection_date        | date    | null: false               |
| second                 | date    |                           |
| second_check           | date    |                           |
| third                  | date    |                           |
| third_check            | date    |                           |
| forth                  | date    |                           |
| forth_check            | date    |                           |
| fifth                  | date    |                           |
| fifth_check            | date    |                           |
| sixth                  | date    |                           |
| sixth_check            | date    |                           |
| seventh                | date    |                           |
| seventh_check          | date    |                           |
| eighth                 | date    |                           |
| eighth_check           | date    |                           |
| ninth                  | date    |                           |
| ninth_check            | date    |                           |
| tenth                  | date    |                           |
| tenth_check            | date    |                           |

## Association
- belongs_to: user
