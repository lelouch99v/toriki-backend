# frozen_string_literal: true

class GachaController < ApplicationController
  def turn_gacha
    @food_list = Menu.where('class_id <= 4').order('RANDOM()').limit(params[:numOfFood])
    @drink_list = Menu.where('class_id = 5').order('RANDOM()').limit(params[:numOfDrink])
    render json: { foodList: @food_list, drinkList: @drink_list }
  end
end
