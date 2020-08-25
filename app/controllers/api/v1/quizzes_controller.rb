class Api::V1::QuizzesController < ApplicationController
  before_action :set_quiz, only: [:show, :update, :destroy]

  # GET /quizzes
  def index
    @quizzes = Quiz.all
    render json: @quizzes
  end

  # GET /quizzes/1
  def show
    render json: @quiz
  end

  # POST /quizzes
  def create
    @quiz = Quiz.new(quiz_params)

    if @quiz.save
      render :show, status: :created
    else
      render json: @quiz.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quizzes/1
  def update
    if @quiz.update(quiz_params)
      render :show, status: :ok
    else
      render json: @quiz.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quizzes/1
  def destroy
    @quiz.destroy
    response = { message: 'Quiz deleted successfully'}
    render json: response
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quiz_params
      params.permit(:title, :user_id)
    end
end
