# frozen_string_literal: true

Rails.application.routes.draw do
  get '/message/random', to: 'messages#index', as: 'message'
  root 'root#index'
  get '*path', to: 'root#index'
end
