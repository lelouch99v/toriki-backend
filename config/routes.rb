# frozen_string_literal: true

Rails.application.routes.draw do
  get 'hello_world', to: 'application#hello_world'
  post 'turn_gacha', to: 'gacha#turn_gacha'
  get 'turn_gacha', to: 'gacha#turn_gacha'
end
