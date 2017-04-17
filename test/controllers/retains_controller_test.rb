require 'test_helper'

class RetainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @retain = retains(:one)
  end

  test "should get index" do
    get retains_url
    assert_response :success
  end

  test "should get new" do
    get new_retain_url
    assert_response :success
  end

  test "should create retain" do
    assert_difference('Retain.count') do
      post retains_url, params: { retain: { Id_Factura: @retain.Id_Factura, Id_Retencion: @retain.Id_Retencion, PorcentajeRetencion: @retain.PorcentajeRetencion } }
    end

    assert_redirected_to retain_url(Retain.last)
  end

  test "should show retain" do
    get retain_url(@retain)
    assert_response :success
  end

  test "should get edit" do
    get edit_retain_url(@retain)
    assert_response :success
  end

  test "should update retain" do
    patch retain_url(@retain), params: { retain: { Id_Factura: @retain.Id_Factura, Id_Retencion: @retain.Id_Retencion, PorcentajeRetencion: @retain.PorcentajeRetencion } }
    assert_redirected_to retain_url(@retain)
  end

  test "should destroy retain" do
    assert_difference('Retain.count', -1) do
      delete retain_url(@retain)
    end

    assert_redirected_to retains_url
  end
end
