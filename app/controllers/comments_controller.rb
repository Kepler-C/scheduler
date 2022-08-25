class CommentsController < ApplicationController
  
  http_basic_authenticate_with name: "user1", password: "secret", only: :destroy

  def create
    @appointment =Appointment.find(params[:appointment_id])
    @comment = @appointment.comments.create(comment_params)
    redirect_to appointment_path(@appointment)
  end

  def destroy
    @appointment = Appointment.find(params[:appointment_id])
    @comment = @appointment.comments.find(params[:id])
    @comment.destroy
    redirect_to appointment_path(@appointment), status: 303
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body, :status)
  end

end
