require 'test_helper'

class FreeTrialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @free_trial = free_trials(:one)
  end

  test "should get index" do
    get free_trials_url, as: :json
    assert_response :success
  end

  test "should create free_trial" do
    assert_difference('FreeTrial.count') do
      post free_trials_url, params: { free_trial: { active: @free_trial.active, expiration: @free_trial.expiration, family_id: @free_trial.family_id, link: @free_trial.link, password: @free_trial.password, service: @free_trial.service, username: @free_trial.username } }, as: :json
    end

    assert_response 201
  end

  test "should show free_trial" do
    get free_trial_url(@free_trial), as: :json
    assert_response :success
  end

  test "should update free_trial" do
    patch free_trial_url(@free_trial), params: { free_trial: { active: @free_trial.active, expiration: @free_trial.expiration, family_id: @free_trial.family_id, link: @free_trial.link, password: @free_trial.password, service: @free_trial.service, username: @free_trial.username } }, as: :json
    assert_response 200
  end

  test "should destroy free_trial" do
    assert_difference('FreeTrial.count', -1) do
      delete free_trial_url(@free_trial), as: :json
    end

    assert_response 204
  end
end
