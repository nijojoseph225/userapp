require 'test_helper'

class UesrtypesControllerTest < ActionController::TestCase
  setup do
    @uesrtype = uesrtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uesrtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uesrtype" do
    assert_difference('Uesrtype.count') do
      post :create, uesrtype: { description: @uesrtype.description, name: @uesrtype.name }
    end

    assert_redirected_to uesrtype_path(assigns(:uesrtype))
  end

  test "should show uesrtype" do
    get :show, id: @uesrtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uesrtype
    assert_response :success
  end

  test "should update uesrtype" do
    patch :update, id: @uesrtype, uesrtype: { description: @uesrtype.description, name: @uesrtype.name }
    assert_redirected_to uesrtype_path(assigns(:uesrtype))
  end

  test "should destroy uesrtype" do
    assert_difference('Uesrtype.count', -1) do
      delete :destroy, id: @uesrtype
    end

    assert_redirected_to uesrtypes_path
  end
end
