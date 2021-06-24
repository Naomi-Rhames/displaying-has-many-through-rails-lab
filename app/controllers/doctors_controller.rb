class DoctorsController < ApplicationController

    def show
        @doctor = Doctor.find(params[:id])
    end

    def index
        @doctor = Doctor.all
    end

    def new
        @doctor = Doctor.new
    end

    def create
        @doctor = Doctor.create(doctor_params)
    end

    private
    def doctor_params
        params.require(:doctor).permit(:name, :age)
    end
end
