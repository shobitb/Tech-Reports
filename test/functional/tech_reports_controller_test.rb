require 'test_helper'

class TechReportsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tech_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tech_report" do
    assert_difference('TechReport.count') do
      post :create, :tech_report => { }
    end

    assert_redirected_to tech_report_path(assigns(:tech_report))
  end

  test "should show tech_report" do
    get :show, :id => tech_reports(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tech_reports(:one).to_param
    assert_response :success
  end

  test "should update tech_report" do
    put :update, :id => tech_reports(:one).to_param, :tech_report => { }
    assert_redirected_to tech_report_path(assigns(:tech_report))
  end

  test "should destroy tech_report" do
    assert_difference('TechReport.count', -1) do
      delete :destroy, :id => tech_reports(:one).to_param
    end

    assert_redirected_to tech_reports_path
  end
end
