require 'test_helper'

class NewModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_model = new_models(:one)
  end

  test "should get index" do
    get new_models_url
    assert_response :success
  end

  test "should get new" do
    get new_new_model_url
    assert_response :success
  end

  test "should create new_model" do
    assert_difference('NewModel.count') do
      post new_models_url, params: { new_model: { description: @new_model.description, email_address: @new_model.email_address } }
    end

    assert_redirected_to new_model_url(NewModel.last)
  end

  test "should show new_model" do
    get new_model_url(@new_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_new_model_url(@new_model)
    assert_response :success
  end

  test "should update new_model" do
    patch new_model_url(@new_model), params: { new_model: { description: @new_model.description, email_address: @new_model.email_address } }
    assert_redirected_to new_model_url(@new_model)
  end

  test "should destroy new_model" do
    assert_difference('NewModel.count', -1) do
      delete new_model_url(@new_model)
    end

    assert_redirected_to new_models_url
  end
end
