require 'test_helper'

class MorninglistsControllerTest < ActionController::TestCase
  setup do
    @morninglist = morninglists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:morninglists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create morninglist" do
    assert_difference('Morninglist.count') do
      post :create, morninglist: { day_id: @morninglist.day_id, note: @morninglist.note, status: @morninglist.status }
    end

    assert_redirected_to morninglist_path(assigns(:morninglist))
  end

  test "should show morninglist" do
    get :show, id: @morninglist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @morninglist
    assert_response :success
  end

  test "should update morninglist" do
    put :update, id: @morninglist, morninglist: { day_id: @morninglist.day_id, note: @morninglist.note, status: @morninglist.status }
    assert_redirected_to morninglist_path(assigns(:morninglist))
  end

  test "should destroy morninglist" do
    assert_difference('Morninglist.count', -1) do
      delete :destroy, id: @morninglist
    end

    assert_redirected_to morninglists_path
  end
end
