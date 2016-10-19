require 'test_helper'

class TransaccionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transaccione = transacciones(:one)
  end

  test "should get index" do
    get transacciones_url, as: :json
    assert_response :success
  end

  test "should create transaccione" do
    assert_difference('Transaccione.count') do
      post transacciones_url, params: { transaccione: { cuenta_id: @transaccione.cuenta_id, descripcion: @transaccione.descripcion, instruccion: @transaccione.instruccion, monto: @transaccione.monto } }, as: :json
    end

    assert_response 201
  end

  test "should show transaccione" do
    get transaccione_url(@transaccione), as: :json
    assert_response :success
  end

  test "should update transaccione" do
    patch transaccione_url(@transaccione), params: { transaccione: { cuenta_id: @transaccione.cuenta_id, descripcion: @transaccione.descripcion, instruccion: @transaccione.instruccion, monto: @transaccione.monto } }, as: :json
    assert_response 200
  end

  test "should destroy transaccione" do
    assert_difference('Transaccione.count', -1) do
      delete transaccione_url(@transaccione), as: :json
    end

    assert_response 204
  end
end
