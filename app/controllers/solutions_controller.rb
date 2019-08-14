class SolutionsController < ApplicationController
  before_action :authenticate_token
  before_action :authorize_user
  before_action :set_solution, only: [:show, :update, :destroy]

  # GET /solutions
  # def index
  #   @solutions = Solution.where(user_id: solution_params[:user_id])
  #   render json: {solutions: @solutions}, status: 200
  # end

  # GET /solutions/1
  # def show
  #   render json: {solutions: @solution}, status: 200
  # end

  # POST /solutions
  def create
    @solution = Solution.new(solution_params)

    if @solution.save
      render json: {solution: @solution}, status: 201
    else
      render json: @solution.errors, status: :unprocessable_entity
    end
  end

  # POST /solutions/user
  def user
    @solutions = Solution.where(user_id: solution_params[:user_id]).order(created_at: :desc)
    render json: {solutions: @solutions}, status: 200
  end

  # PATCH/PUT /solutions/1
  # def update
  #   if @solution.update(solution_params)
  #     render json: @solution
  #   else
  #     render json: @solution.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /solutions/1
  def destroy
    @solution.destroy
    render json: {solutions: @solution}, status: 200
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solution
      @solution = Solution.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def solution_params
      params.permit(:solution, :training, :user_id)
    end
end
