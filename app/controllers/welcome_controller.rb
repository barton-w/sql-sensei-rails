class WelcomeController < ApplicationController
  def index
    render json: {message: "Welcome to The SQL Sensei API"}, status: 200
  end
end
