class AppointmentsController < ApplicationController

  http_basic_authenticate_with name: "user1", password: "secret", except: [:index, :show]

  def index
    @appointments = Appointment.all
  end

  def show 
    @appointment = Appointment.find(params[:id]) 
  end

  def new 
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to @appointment
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update(appointment_params)
      redirect_to @appointment
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to root_path, status: :see_other
  end

  private
    def appointment_params
      params.require(:appointment).permit(:patient_name, :date, :time, :issue, :status)
    end
  
end
