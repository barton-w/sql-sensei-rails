class WakesController < ApplicationController
  def index
    render json: {sensei: "Sensei Ready"}, status: 200
  end
end
