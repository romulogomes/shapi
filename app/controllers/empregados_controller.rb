class EmpregadosController < ApplicationController
  before_action :set_empregado, only: [:show, :update, :destroy, :informacoes]

  # FIXME: Romulo - 1 controller por tela
  # FIXME: Romulo - solicitacao por mes
  def informacoes
    solicitacoes = Solicitacao.where(empregado_id: parametros[:id])
    valor_ja_solicitado = 150
    salario_disponivel = (@empregado.salario || 0) - valor_ja_solicitado

    infos = {
      valor_ja_solicitado: valor_ja_solicitado,
      salario_disponivel:  salario_disponivel
    }
    
    render json: infos
  end

  def login
    empregado = Empregado.find_by(cpf: parametros[:cpf], senha: parametros[:senha])

    if empregado.nil?
      render json: { codigo: "usuario_nao_encontrado" }, status: 404
    else
      empregado.senha = nil
      render json: empregado
    end
  end

  # GET /empregados
  def index
    @empregados = Empregado.all

    render json: @empregados
  end

  # GET /empregados/1
  def show
    render json: @empregado
  end

  # POST /empregados
  def create
    @empregado = Empregado.new(parametros)

    if @empregado.save
      render json: @empregado, status: :created, location: @empregado
    else
      render json: @empregado.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /empregados/1
  def update
    if @empregado.update(parametros)
      render json: @empregado
    else
      render json: @empregado.errors, status: :unprocessable_entity
    end
  end

  # DELETE /empregados/1
  def destroy
    @empregado.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empregado
      @empregado = Empregado.find(params[:id])
    end

    
end
