class PrescriptionsController < ApplicationController
  
  def create
    @appointment = Appointment.find(params[:appointment_id])
    @prescription = @appointment.prescriptions.create(prescription_params)
    redirect_to appointment_path(@appointment)
  end

  private
    def prescription_params
      params.require(:prescription).permit(:drug, :amount)
    end

end
