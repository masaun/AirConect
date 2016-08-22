class ConversationsController < ApplicationController

  def index
    @users = User.all
    @conversations = Conversation.involving(current_user)
  end

  def create
    if Conversation.between(params[:sender_id], conversation_params).present?
      @conversation = Conversation.between(prarams[:sender_id], params[:recipient_id]).first
    else
      @conversation = Conversation.create(conversation_params)
    end

    redirect_to conversation_messages_path(@conversation)
  end

  private

    def conversation_params
      params.permit(:sender_id, :recipient_id)
    end

end