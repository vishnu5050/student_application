require 'test_helper'

class CollApplicationsControllerTest < ActionController::TestCase
  setup do
    @coll_application = coll_applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coll_applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coll_application" do
    assert_difference('CollApplication.count') do
      post :create, coll_application: { college_id: @coll_application.college_id, student_id: @coll_application.student_id }
    end

    assert_redirected_to coll_application_path(assigns(:coll_application))
  end

  test "should show coll_application" do
    get :show, id: @coll_application
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coll_application
    assert_response :success
  end

  test "should update coll_application" do
    patch :update, id: @coll_application, coll_application: { college_id: @coll_application.college_id, student_id: @coll_application.student_id }
    assert_redirected_to coll_application_path(assigns(:coll_application))
  end

  test "should destroy coll_application" do
    assert_difference('CollApplication.count', -1) do
      delete :destroy, id: @coll_application
    end

    assert_redirected_to coll_applications_path
  end
end
