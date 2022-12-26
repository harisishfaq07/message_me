class ChatroomController < ApplicationController
def index
    @messages = Message.all
end

def users
    @users = User.all
end
end