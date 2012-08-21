require 'test_helper'

class ChancellorsControllerTest < ActionController::TestCase
  setup do
    @chancellor = chancellors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chancellors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chancellor" do
    assert_difference('Chancellor.count') do
      post :create, chancellor: { birthday: @chancellor.birthday, day_of_death: @chancellor.day_of_death, first_name: @chancellor.first_name, inauguration: @chancellor.inauguration, last_name: @chancellor.last_name }
    end

    assert_redirected_to chancellor_path(assigns(:chancellor))
  end

  test "should show chancellor" do
    get :show, id: @chancellor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chancellor
    assert_response :success
  end

  test "should update chancellor" do
    put :update, id: @chancellor, chancellor: { birthday: @chancellor.birthday, day_of_death: @chancellor.day_of_death, first_name: @chancellor.first_name, inauguration: @chancellor.inauguration, last_name: @chancellor.last_name }
    assert_redirected_to chancellor_path(assigns(:chancellor))
  end

  test "should destroy chancellor" do
    assert_difference('Chancellor.count', -1) do
      delete :destroy, id: @chancellor
    end

    assert_redirected_to chancellors_path
  end
end
