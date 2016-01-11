require 'test_helper'

class PlaydatesControllerTest < ActionController::TestCase
  setup do
    @playdate = playdates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:playdates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create playdate" do
    assert_difference('Playdate.count') do
      post :create, playdate: { location--no-test-framework: @playdate.location--no-test-framework }
    end

    assert_redirected_to playdate_path(assigns(:playdate))
  end

  test "should show playdate" do
    get :show, id: @playdate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @playdate
    assert_response :success
  end

  test "should update playdate" do
    patch :update, id: @playdate, playdate: { location--no-test-framework: @playdate.location--no-test-framework }
    assert_redirected_to playdate_path(assigns(:playdate))
  end

  test "should destroy playdate" do
    assert_difference('Playdate.count', -1) do
      delete :destroy, id: @playdate
    end

    assert_redirected_to playdates_path
  end
end
