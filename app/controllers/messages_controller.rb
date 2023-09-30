# frozen_string_literal: true

# app/controllers/messages_controller.rb
class MessagesController < ApplicationController
  def index
    message = Message.order('RANDOM()').first
    render json: message
  end
end
