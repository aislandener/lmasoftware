class ContasPagarsController < ApplicationController
  before_action :set_contas_pagar, only: [:show, :edit, :update, :destroy]

  # GET /contas_pagars
  # GET /contas_pagars.json
  def index
    @contas_pagars = ContasPagar.paginate(:page => params[:page]).order('id DESC')
  end

  # GET /contas_pagars/1
  # GET /contas_pagars/1.json
  def show
  end

  # GET /contas_pagars/new
  def new
    @contas_pagar = ContasPagar.new
  end

  # GET /contas_pagars/1/edit
  def edit
  end

  # POST /contas_pagars
  # POST /contas_pagars.json
  def create
    @contas_pagar = ContasPagar.new(contas_pagar_params)

    respond_to do |format|
      if @contas_pagar.save
        format.html { redirect_to @contas_pagar, notice: 'Contas a pagar lançado com sucesso.' }
        format.json { render :show, status: :created, location: @contas_pagar }
      else
        format.html { render :new }
        format.json { render json: @contas_pagar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contas_pagars/1
  # PATCH/PUT /contas_pagars/1.json
  def update
    respond_to do |format|
      if @contas_pagar.update(contas_pagar_params)
        format.html { redirect_to @contas_pagar, notice: 'Contas a pagar alterado com sucesso.' }
        format.json { render :show, status: :ok, location: @contas_pagar }
      else
        format.html { render :edit }
        format.json { render json: @contas_pagar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contas_pagars/1
  # DELETE /contas_pagars/1.json
  def destroy
    @contas_pagar.destroy
    respond_to do |format|
      format.html { redirect_to contas_pagars_url, notice: 'Contas a pagar foi excluido.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contas_pagar
      @contas_pagar = ContasPagar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contas_pagar_params
      params.require(:contas_pagar).permit(:dataEmissao, :valor, :vencimento, :juros, :multa, :Fornecedor_id)
    end
end
