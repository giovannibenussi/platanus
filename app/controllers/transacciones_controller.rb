require 'digest'
class TransaccionesController < ApplicationController
    before_action :set_transaccione, only: [:show, :update, :destroy]

    # GET /transacciones
    def index
        @transacciones = Transaccione.all

        render json: @transacciones
    end

    # GET /transacciones/1
    def show
        render json: @transaccione
    end

    # POST /transacciones
    def create
        cuenta_id = Digest::SHA256.base64digest transaccione_params['cuenta_id']
        @cuenta = Cuenta.find_by_direccion cuenta_id
        if not @cuenta.nil?
            @transaccione = Transaccione.new(transaccione_params)
            @transaccione.cuenta_id = @cuenta.id
            if @transaccione.save
                render json: @transaccione, status: :created, location: @transaccione, success: true
            else
                render json: @transaccione.errors, status: :unprocessable_entity, success: false
            end
        else
            render :json => { success: false, error: 'ACCOUNT_DOES_NOT_EXISTS' }
        end

    end

    # PATCH/PUT /transacciones/1
    def update
        if @transaccione.update(transaccione_params)
            render json: @transaccione
        else
            render json: @transaccione.errors, status: :unprocessable_entity
        end
    end

    # DELETE /transacciones/1
    def destroy
        @transaccione.destroy
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_transaccione
        @transaccione = Transaccione.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def transaccione_params
        params.require(:transaccione).permit(:cuenta_id, :descripcion, :monto)
    end
end
