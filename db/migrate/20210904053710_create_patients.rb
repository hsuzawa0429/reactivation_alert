class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :patient_code, null: false
      t.integer :gender_id
      t.integer :age_id
      t.integer :department_id, null: false
      t.integer :drug_id
      t.integer :monitoring_interval_id, null: false
      t.date :inspection_date, null: false
      t.timestamps
    end
  end
end
