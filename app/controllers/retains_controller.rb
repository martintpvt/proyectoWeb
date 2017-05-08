class RetainsController < ApplicationController
  before_filter :normal_user?
  before_action :set_retain, only: [:show, :edit, :update, :destroy]

  # GET /retains
  # GET /retains.json
  def index
    @retains = Retain.all
  end

  # GET /retains/1
  # GET /retains/1.json
  def show
  end

  # GET /retains/new
  def new
    @retain = Retain.new
  end

  # GET /retains/1/edit
  def edit
  end

  # POST /retains
  # POST /retains.json
  def create
    @retain = Retain.new(retain_params)

    respond_to do |format|
      if @retain.save
        format.html { redirect_to @retain, notice: 'Retain was successfully created.' }
        format.json { render :show, status: :created, location: @retain }
      else
        format.html { render :new }
        format.json { render json: @retain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /retains/1
  # PATCH/PUT /retains/1.json
  def update
    respond_to do |format|
      if @retain.update(retain_params)
        format.html { redirect_to @retain, notice: 'Retain was successfully updated.' }
        format.json { render :show, status: :ok, location: @retain }
      else
        format.html { render :edit }
        format.json { render json: @retain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /retains/1
  # DELETE /retains/1.json
  def destroy
    @retain.destroy
    respond_to do |format|
      format.html { redirect_to retains_url, notice: 'Retain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_retain
      @retain = Retain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def retain_params
      params.require(:retain).permit(:Id_Factura, :Id_Retencion, :PorcentajeRetencion)
    end
end
