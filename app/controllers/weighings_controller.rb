class WeighingsController < ApplicationController
  def index
    render json: Weighing.all
  end
end
