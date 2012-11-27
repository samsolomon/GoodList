require 'test_helper'

class EveninglistsControllerTest < ActionController::TestCase
  setup do
    @eveninglist = eveninglists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eveninglists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eveninglist" do
    assert_difference('Eveninglist.count') do
      post :create, eveninglist: { day_id: @eveninglist.day_id, note: @eveninglist.note, status: @eveninglist.status }
    end

    assert_redirected_to eveninglist_path(assigns(:eveninglist))
  end

  test "should show eveninglist" do
    get :show, id: @eveninglist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eveninglist
    assert_response :success
  end

  test "should update eveninglist" do
    put :update, id: @eveninglist, eveninglist: { day_id: @eveninglist.day_id, note: @eveninglist.note, status: @eveninglist.status }
    assert_redirected_to eveninglist_path(assigns(:eveninglist))
  end

  test "should destroy eveninglist" do
    assert_difference('Eveninglist.count', -1) do
      delete :destroy, id: @eveninglist
    end

    assert_redirected_to eveninglists_path
  end
end
