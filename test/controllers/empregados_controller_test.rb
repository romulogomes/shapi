require 'test_helper'

class EmpregadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @empregado = empregados(:one)
  end

  test "should get index" do
    get empregados_url, as: :json
    assert_response :success
  end

  test "should create empregado" do
    assert_difference('Empregado.count') do
      post empregados_url, params: { empregado: { cpf: @empregado.cpf, data_nascimento: @empregado.data_nascimento, nome: @empregado.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show empregado" do
    get empregado_url(@empregado), as: :json
    assert_response :success
  end

  test "should update empregado" do
    patch empregado_url(@empregado), params: { empregado: { cpf: @empregado.cpf, data_nascimento: @empregado.data_nascimento, nome: @empregado.nome } }, as: :json
    assert_response 200
  end

  test "should destroy empregado" do
    assert_difference('Empregado.count', -1) do
      delete empregado_url(@empregado), as: :json
    end

    assert_response 204
  end
end
