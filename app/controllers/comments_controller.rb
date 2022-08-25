class CommentsController < ApplicationController
  
  def create
    @appointment =Appointment.find(params[:appointment_id])
    @comment = @appointment.comments.create(comment_params)
    redirect_to appointment_path(@appointment)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body, :status)
  end

end
