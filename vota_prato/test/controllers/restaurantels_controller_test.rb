require 'test_helper'

class RestaurantelsControllerTest < ActionController::TestCase
  setup do
    @restaurantel = restaurantels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurantels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurantel" do
    assert_difference('Restaurantel.count') do
      post :create, restaurantel: {  }
    end

    assert_redirected_to restaurantel_path(assigns(:restaurantel))
  end

  test "should show restaurantel" do
    get :show, id: @restaurantel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurantel
    assert_response :success
  end

  test "should update restaurantel" do
    patch :update, id: @restaurantel, restaurantel: {  }
    assert_redirected_to restaurantel_path(assigns(:restaurantel))
  end

  test "should destroy restaurantel" do
    assert_difference('Restaurantel.count', -1) do
      delete :destroy, id: @restaurantel
    end

    assert_redirected_to restaurantels_path
  end
end
