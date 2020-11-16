class CovidQuestionsController < ApplicationController
  before_action :set_covid_question, only: [:show, :edit, :update, :destroy]

  # GET /covid_questions
  # GET /covid_questions.json
  def index
    @covid_questions = CovidQuestion.all
  end

  # GET /covid_questions/1
  # GET /covid_questions/1.json
  def show
  end

  # GET /covid_questions/new
  def new
    @covid_question = CovidQuestion.new
  end

  # GET /covid_questions/1/edit
  def edit
  end

  # POST /covid_questions
  # POST /covid_questions.json
  def create
    @covid_question = CovidQuestion.new(covid_question_params)

    respond_to do |format|
      if @covid_question.save
        format.html { redirect_to @covid_question, notice: 'Thank you for providing your response.' }
        format.json { render :show, status: :created, location: @covid_question }
      else
        format.html { render :new }
        format.json { render json: @covid_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /covid_questions/1
  # PATCH/PUT /covid_questions/1.json
  def update
    respond_to do |format|
      if @covid_question.update(covid_question_params)
        format.html { redirect_to @covid_question, notice: 'Covid question was successfully updated.' }
        format.json { render :show, status: :ok, location: @covid_question }
      else
        format.html { render :edit }
        format.json { render json: @covid_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /covid_questions/1
  # DELETE /covid_questions/1.json
  def destroy
    @covid_question.destroy
    respond_to do |format|
      format.html { redirect_to covid_questions_url, notice: 'Covid question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_covid_question
      @covid_question = CovidQuestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def covid_question_params
      params.require(:covid_question).permit(:temperature, :travel, :contact, :symptoms, :name, :store_id)
    end
end
