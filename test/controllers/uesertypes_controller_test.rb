require 'test_helper'

class UesertypesControllerTest < ActionController::TestCase
  setup do
    @uesertype = uesertypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uesertypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uesertype" do
    assert_difference('Uesertype.count') do
      post :create, uesertype: { description: @uesertype.description, name: @uesertype.name }
    end

    assert_redirected_to uesertype_path(assigns(:uesertype))
  end

  test "should show uesertype" do
    get :show, id: @uesertype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uesertype
    assert_response :success
  end

  test "should update uesertype" do
    patch :update, id: @uesertype, uesertype: { description: @uesertype.description, name: @uesertype.name }
    assert_redirected_to uesertype_path(assigns(:uesertype))
  end

  test "should destroy uesertype" do
    assert_difference('Uesertype.count', -1) do
      delete :destroy, id: @uesertype
    end

    assert_redirected_to uesertypes_path
  end
end
