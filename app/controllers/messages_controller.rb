class MessagesController < ApplicationController

    
    def create
      @message = Message.new(message_params)
      @message.user_id = current_user.id
      if @message.save
        # ActionCable.server.broadcast("room_controller" , {body: "working"})
        redirect_to chatroom_index_path
      end
  end

    private
    def message_params
      params.require(:message).permit(:body)
    end
end