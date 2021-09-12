class PatientsController < ApplicationController
  def index
    @patients = Patient.all.order(id: :DESC)
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.valid?
      @patient.save
      redirect_to patients_path
    else
      render :new
    end
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update(patient_params)
      redirect_to patients_index_path
    else
      render :edit
    end
  end

  def destroy
    @patient = Patient.find(params[:id])
    if @patient.destroy
      redirect_to root_path
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:patient_code, :gender_id, :age_id, :department_id, :drug_id, :monitoring_interval_id, :inspection_date)
  end
end
