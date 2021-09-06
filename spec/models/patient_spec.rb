require 'rails_helper'

RSpec.describe Patient, type: :model do
  before do
    @patient = FactoryBot.build(:patient)
  end

  describe '患者新規登録' do
    it 'patient_codeが空だと登録できない' do
      @patient.patient_code = ''
      @patient.valid?
      expect(@patient.errors.full_messages).to include("Patient code can't be blank")
    end

    it 'department_idが空だと登録できない' do
      @patient.department_id = ''
      @patient.valid?
      expect(@patient.errors.full_messages).to include("Department can't be blank")
    end

    it 'monitoring_interval_idが空では登録できない' do
      @patient.monitoring_interval_id = ''
      @patient.valid?
      expect(@patient.errors.full_messages).to include("Monitoring interval can't be blank")
    end

    it 'inspection_dateが空では登録できない' do
      @patient.inspection_date = ''
      @patient.valid?
      expect(@patient.errors.full_messages).to include("Inspection date can't be blank")
    end
  end
end
