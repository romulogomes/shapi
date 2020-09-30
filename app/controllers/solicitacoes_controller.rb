class SolicitacoesController < ApplicationController
  before_action :set_solicitacao, only: [:show, :update, :destroy]

  # GET /solicitacoes -- FIXME ROmulo - remover
  def index
    @solicitacoes = Solicitacao.all
    render json: @solicitacoes
  end

  def listar_solicitacoes_por_empregado
    @solicitacoes = Solicitacao.where(empregado_id: parametros[:id])
    render json: @solicitacoes
  end

  def listar_solicitacoes_por_mes_ano
    @solicitacoes = Solicitacao.where(mes_ano: parametros[:mes_ano])
    render json: @solicitacoes
  end

  def alterar_status
    Solicitacao.find(parametros[:id]).update_column(:status, parametros[:status])
  end

  # GET /solicitacoes/1
  def show
    render json: @solicitacao
  end

  # POST /solicitacoes
  def create
    @solicitacao = Solicitacao.new(parametros["solicitacao"])

    if @solicitacao.save
      render json: @solicitacao, status: :created, location: @solicitacao
    else
      render json: @solicitacao.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /solicitacoes/1
  def update
    if @solicitacao.update(parametros["solicitacao"])
      render json: @solicitacao
    else
      render json: @solicitacao.errors, status: :unprocessable_entity
    end
  end

  # DELETE /solicitacoes/1
  def destroy
    @solicitacao.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitacao
      @solicitacao = Solicitacao.find(parametros[:id])
    end
end
