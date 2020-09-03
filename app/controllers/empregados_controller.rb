class EmpregadosController < ApplicationController
  before_action :set_empregado, only: [:show, :update, :destroy]

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
    @empregado = Empregado.new(empregado_params)

    if @empregado.save
      render json: @empregado, status: :created, location: @empregado
    else
      render json: @empregado.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /empregados/1
  def update
    if @empregado.update(empregado_params)
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

    # Only allow a trusted parameter "white list" through.
    def empregado_params
      params.require(:empregado).permit(:nome, :data_nascimento, :cpf)
    end
end
