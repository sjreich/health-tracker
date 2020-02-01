module Api
  class WeighingsController < ApplicationController
    def index
      render json: { weighings: Weighing.all }
    end
  end
end
