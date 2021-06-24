class PatientsController < ApplicationController
    def show
        @patient = Patient.find(params[:id])
    end

    def index
        @patient = Patient.all
    end

    def new
        @patient = Patient.new
    end

    def create
        @patient = Patient.create(patient_params)
    end

    private
    def patient_params
        params.require(:patient).permit(:name, :age)
    end
end
