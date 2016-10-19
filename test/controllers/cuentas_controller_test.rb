require 'test_helper'

class CuentasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cuenta = cuentas(:one)
  end

  test "should get index" do
    get cuentas_url, as: :json
    assert_response :success
  end

  test "should create cuenta" do
    assert_difference('Cuenta.count') do
      post cuentas_url, params: { cuenta: { direccion: @cuenta.direccion, saldo: @cuenta.saldo } }, as: :json
    end

    assert_response 201
  end

  test "should show cuenta" do
    get cuenta_url(@cuenta), as: :json
    assert_response :success
  end

  test "should update cuenta" do
    patch cuenta_url(@cuenta), params: { cuenta: { direccion: @cuenta.direccion, saldo: @cuenta.saldo } }, as: :json
    assert_response 200
  end

  test "should destroy cuenta" do
    assert_difference('Cuenta.count', -1) do
      delete cuenta_url(@cuenta), as: :json
    end

    assert_response 204
  end
end
