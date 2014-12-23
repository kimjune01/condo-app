require 'test_helper'

class ConciergesControllerTest < ActionController::TestCase
  setup do
    @concierge = concierges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:concierges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create concierge" do
    assert_difference('Concierge.count') do
      post :create, concierge: { email: @concierge.email, name: @concierge.name, phone: @concierge.phone }
    end

    assert_redirected_to concierge_path(assigns(:concierge))
  end

  test "should show concierge" do
    get :show, id: @concierge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @concierge
    assert_response :success
  end

  test "should update concierge" do
    patch :update, id: @concierge, concierge: { email: @concierge.email, name: @concierge.name, phone: @concierge.phone }
    assert_redirected_to concierge_path(assigns(:concierge))
  end

  test "should destroy concierge" do
    assert_difference('Concierge.count', -1) do
      delete :destroy, id: @concierge
    end

    assert_redirected_to concierges_path
  end
end
