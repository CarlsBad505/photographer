class HomeController < ApplicationController
  def index
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.valid?
      MessageMailer.new_message(@message).deliver_now
    end
    respond_to do |format|
      format.js
    end
  end

  def experiential
  end

  def architecture
  end

  def aerial
  end

  def adventure
  end

end
