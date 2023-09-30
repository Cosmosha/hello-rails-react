# frozen_string_literal: true

class MessagesController < ApplicationController
  def index
    message = Message.order('RANDOM()').first
    render json: message
  end
end
