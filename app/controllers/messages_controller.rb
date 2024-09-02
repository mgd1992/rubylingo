class MessagesController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @message = Message.new(message_params)
    @message.question = @question
    @message.user = current_user
    if @message.save
      respond_to do |format|
        format.turbo_stream do
          render turbo_stream: turbo_stream.append(:messages, partial: "messages/message",
            locals: { message: @message })
        end
        format.html { redirect_to question_path(@question) }
      end
    else
      render "questions/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

end
