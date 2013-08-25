require 'test_helper'

class BeingsControllerTest < ActionController::TestCase
  setup do
    @being = beings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create being" do
    assert_difference('Being.count') do
      post :create, being: { age: @being.age, alive: @being.alive, ancestry: @being.ancestry, gender: @being.gender, given_name: @being.given_name, surname: @being.surname, title: @being.title }
    end

    assert_redirected_to being_path(assigns(:being))
  end

  test "should show being" do
    get :show, id: @being
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @being
    assert_response :success
  end

  test "should update being" do
    patch :update, id: @being, being: { age: @being.age, alive: @being.alive, ancestry: @being.ancestry, gender: @being.gender, given_name: @being.given_name, surname: @being.surname, title: @being.title }
    assert_redirected_to being_path(assigns(:being))
  end

  test "should destroy being" do
    assert_difference('Being.count', -1) do
      delete :destroy, id: @being
    end

    assert_redirected_to beings_path
  end
end
