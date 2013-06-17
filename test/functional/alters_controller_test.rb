require 'test_helper'

class AltersControllerTest < ActionController::TestCase
  setup do
    @alter = alters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alter" do
    assert_difference('Alter.count') do
      post :create, alter: { content: @alter.content, name: @alter.name }
    end

    assert_redirected_to alter_path(assigns(:alter))
  end

  test "should show alter" do
    get :show, id: @alter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alter
    assert_response :success
  end

  test "should update alter" do
    put :update, id: @alter, alter: { content: @alter.content, name: @alter.name }
    assert_redirected_to alter_path(assigns(:alter))
  end

  test "should destroy alter" do
    assert_difference('Alter.count', -1) do
      delete :destroy, id: @alter
    end

    assert_redirected_to alters_path
  end
end
