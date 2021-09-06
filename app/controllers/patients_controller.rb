class PatientsController < ApplicationController
  def index
    @patients = Patient.order(id: :DESC)
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.valid?
      @patient.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:patient_code, :gender_id, :age_id, :department_id, :drug_id, :monitoring_interval_id, :inspection_date)
  end
end
