class CuentasController < ApplicationController
  before_action :set_cuenta, only: [:show, :update, :destroy]

  # GET /cuentas
  def index
    @cuentas = Cuenta.all

    render json: @cuentas
  end

  # GET /cuentas/1
  def show
    render json: @cuenta
  end

  # POST /cuentas
  def create
    @cuenta = Cuenta.new(cuenta_params)

    if @cuenta.save
      render json: @cuenta, status: :created, location: @cuenta
    else
      render json: @cuenta.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cuentas/1
  def update
    if @cuenta.update(cuenta_params)
      render json: @cuenta
    else
      render json: @cuenta.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cuentas/1
  def destroy
    @cuenta.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuenta
      @cuenta = Cuenta.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cuenta_params
      params.require(:cuenta).permit(:direccion, :saldo)
    end
end
