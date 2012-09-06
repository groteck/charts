require 'test_helper'

class ElementRangesControllerTest < ActionController::TestCase
  setup do
    @element_range = element_ranges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:element_ranges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create element_range" do
    assert_difference('ElementRange.count') do
      post :create, element_range: { max: @element_range.max, min: @element_range.min }
    end

    assert_redirected_to element_range_path(assigns(:element_range))
  end

  test "should show element_range" do
    get :show, id: @element_range
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @element_range
    assert_response :success
  end

  test "should update element_range" do
    put :update, id: @element_range, element_range: { max: @element_range.max, min: @element_range.min }
    assert_redirected_to element_range_path(assigns(:element_range))
  end

  test "should destroy element_range" do
    assert_difference('ElementRange.count', -1) do
      delete :destroy, id: @element_range
    end

    assert_redirected_to element_ranges_path
  end
end
