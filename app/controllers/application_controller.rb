# frozen_string_literal: true

class ApplicationController < ActionController::API
  def hello_world
    menu = Menu.find(1)
    render json: { text: menu.name }
  end
end
