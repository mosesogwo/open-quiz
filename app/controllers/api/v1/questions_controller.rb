class Api::V1::QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :update, :destroy]
  before_action :verify_teacher_signed_in, only: [:create, :update, :destroy]

  # GET /questions
  def index
    @questions = Question.all
    render json: @questions
  end

  # GET /questions/1
  def show
    render json: @question
  end

  # POST /questions
  def create
    byebug
    @question = Question.new(question_params)
    

    if @question.save
      render json: @question, status: :created
    else
      render json: @question.errors.full_messages, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /questions/1
  def update
    if @question.update(question_params)
      render json: @question, status: :ok
    else
      render json: @question.errors.full_messages, status: :unprocessable_entity
    end
  end

  # DELETE /questions/1
  def destroy
    @question.destroy
    response = { message: 'Question deleted successfully'}
    render json: response
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def question_params
      params.permit(:is_active, :quiz_id, :question)
    end
end
