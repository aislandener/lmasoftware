class TelefoneFornecedorsController < ApplicationController
  before_action :set_telefone_fornecedor, only: [:show, :edit, :update, :destroy]

  # GET /telefone_fornecedors
  # GET /telefone_fornecedors.json
  def index
    @telefone_fornecedors = TelefoneFornecedor.all
  end

  # GET /telefone_fornecedors/1
  # GET /telefone_fornecedors/1.json
  def show
  end

  # GET /telefone_fornecedors/new
  def new
    @telefone_fornecedor = TelefoneFornecedor.new
  end

  # GET /telefone_fornecedors/1/edit
  def edit
  end

  # POST /telefone_fornecedors
  # POST /telefone_fornecedors.json
  def create
    @telefone_fornecedor = TelefoneFornecedor.new(telefone_fornecedor_params)

    respond_to do |format|
      if @telefone_fornecedor.save
        format.html { redirect_to @telefone_fornecedor, notice: 'Telefone fornecedor was successfully created.' }
        format.json { render :show, status: :created, location: @telefone_fornecedor }
      else
        format.html { render :new }
        format.json { render json: @telefone_fornecedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /telefone_fornecedors/1
  # PATCH/PUT /telefone_fornecedors/1.json
  def update
    respond_to do |format|
      if @telefone_fornecedor.update(telefone_fornecedor_params)
        format.html { redirect_to @telefone_fornecedor, notice: 'Telefone fornecedor was successfully updated.' }
        format.json { render :show, status: :ok, location: @telefone_fornecedor }
      else
        format.html { render :edit }
        format.json { render json: @telefone_fornecedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telefone_fornecedors/1
  # DELETE /telefone_fornecedors/1.json
  def destroy
    @telefone_fornecedor.destroy
    respond_to do |format|
      format.html { redirect_to telefone_fornecedors_url, notice: 'Telefone fornecedor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_telefone_fornecedor
      @telefone_fornecedor = TelefoneFornecedor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def telefone_fornecedor_params
      params.require(:telefone_fornecedor).permit(:ddd, :telefone, :Fornecedor_id)
    end
end
