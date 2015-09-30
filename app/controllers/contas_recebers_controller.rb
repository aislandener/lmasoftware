class ContasRecebersController < ApplicationController
  before_action :set_contas_receber, only: [:show, :edit, :update, :destroy]

  # GET /contas_recebers
  # GET /contas_recebers.json
  def index
    @contas_recebers = ContasReceber.all
  end

  # GET /contas_recebers/1
  # GET /contas_recebers/1.json
  def show
  end

  # GET /contas_recebers/new
  def new
    @contas_receber = ContasReceber.new
  end

  # GET /contas_recebers/1/edit
  def edit
  end

  # POST /contas_recebers
  # POST /contas_recebers.json
  def create
    @contas_receber = ContasReceber.new(contas_receber_params)

    respond_to do |format|
      if @contas_receber.save
        format.html { redirect_to @contas_receber, notice: 'Contas receber was successfully created.' }
        format.json { render :show, status: :created, location: @contas_receber }
      else
        format.html { render :new }
        format.json { render json: @contas_receber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contas_recebers/1
  # PATCH/PUT /contas_recebers/1.json
  def update
    respond_to do |format|
      if @contas_receber.update(contas_receber_params)
        format.html { redirect_to @contas_receber, notice: 'Contas receber was successfully updated.' }
        format.json { render :show, status: :ok, location: @contas_receber }
      else
        format.html { render :edit }
        format.json { render json: @contas_receber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contas_recebers/1
  # DELETE /contas_recebers/1.json
  def destroy
    @contas_receber.destroy
    respond_to do |format|
      format.html { redirect_to contas_recebers_url, notice: 'Contas receber was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contas_receber
      @contas_receber = ContasReceber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contas_receber_params
      params.require(:contas_receber).permit(:dataEmissao, :valor, :vencimento, :juros, :multa, :Cliente_id)
    end
end
