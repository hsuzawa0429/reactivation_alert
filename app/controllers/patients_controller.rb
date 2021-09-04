class PatientsController < ApplicationController
  def index
    @patients = Patient.order(id: :DESC)
  end

  def new
    @patient = Patient.new
  end
end
