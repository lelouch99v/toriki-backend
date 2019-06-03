# frozen_string_literal: true

class GachaController < ApplicationController
  def turn_gacha
    @food_list = Menu.where('class_id <= 4').order('RANDOM()').limit(1)
    render json: { foodList: @food_list }
  end
end
