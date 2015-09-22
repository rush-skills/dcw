require 'test_helper'

class ComplaintsControllerTest < ActionController::TestCase
  setup do
    @complaint = complaints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:complaints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create complaint" do
    assert_difference('Complaint.count') do
      post :create, complaint: { address: @complaint.address, area: @complaint.area, brief: @complaint.brief, complainant: @complaint.complainant, complaint_number: @complaint.complaint_number, contact_number: @complaint.contact_number, file: @complaint.file, nature: @complaint.nature, overdue: @complaint.overdue, prayers: @complaint.prayers, registration_date: @complaint.registration_date, respondent: @complaint.respondent, status: @complaint.status, target_date: @complaint.target_date, user_id: @complaint.user_id }
    end

    assert_redirected_to complaint_path(assigns(:complaint))
  end

  test "should show complaint" do
    get :show, id: @complaint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @complaint
    assert_response :success
  end

  test "should update complaint" do
    patch :update, id: @complaint, complaint: { address: @complaint.address, area: @complaint.area, brief: @complaint.brief, complainant: @complaint.complainant, complaint_number: @complaint.complaint_number, contact_number: @complaint.contact_number, file: @complaint.file, nature: @complaint.nature, overdue: @complaint.overdue, prayers: @complaint.prayers, registration_date: @complaint.registration_date, respondent: @complaint.respondent, status: @complaint.status, target_date: @complaint.target_date, user_id: @complaint.user_id }
    assert_redirected_to complaint_path(assigns(:complaint))
  end

  test "should destroy complaint" do
    assert_difference('Complaint.count', -1) do
      delete :destroy, id: @complaint
    end

    assert_redirected_to complaints_path
  end
end