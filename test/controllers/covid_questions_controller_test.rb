require 'test_helper'

class CovidQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @covid_question = covid_questions(:one)
  end

  test "should get index" do
    get covid_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_covid_question_url
    assert_response :success
  end

  test "should create covid_question" do
    assert_difference('CovidQuestion.count') do
      post covid_questions_url, params: { covid_question: { contact: @covid_question.contact, name: @covid_question.name, store_id: @covid_question.store_id, symptoms: @covid_question.symptoms, temperature: @covid_question.temperature, travel: @covid_question.travel } }
    end

    assert_redirected_to covid_question_url(CovidQuestion.last)
  end

  test "should show covid_question" do
    get covid_question_url(@covid_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_covid_question_url(@covid_question)
    assert_response :success
  end

  test "should update covid_question" do
    patch covid_question_url(@covid_question), params: { covid_question: { contact: @covid_question.contact, name: @covid_question.name, store_id: @covid_question.store_id, symptoms: @covid_question.symptoms, temperature: @covid_question.temperature, travel: @covid_question.travel } }
    assert_redirected_to covid_question_url(@covid_question)
  end

  test "should destroy covid_question" do
    assert_difference('CovidQuestion.count', -1) do
      delete covid_question_url(@covid_question)
    end

    assert_redirected_to covid_questions_url
  end
end
