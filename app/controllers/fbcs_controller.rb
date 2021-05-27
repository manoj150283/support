class FbcsController < ApplicationController
  before_action :set_fbc, only: %i[ show edit update destroy ]

  # GET /fbcs or /fbcs.json
  def index
    @fbcs = Fbc.all
  end

  # GET /fbcs/1 or /fbcs/1.json
  def show
  end

  # GET /fbcs/new
  def new
    @fbc = Fbc.new
  end

  # GET /fbcs/1/edit
  def edit
  end

  # POST /fbcs or /fbcs.json
  def create
    @fbc = Fbc.new(fbc_params)

    respond_to do |format|
      if @fbc.save
        format.html { redirect_to @fbc, notice: "Client was successfully created." }
        format.json { render :show, status: :created, location: @fbc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fbc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fbcs/1 or /fbcs/1.json
  def update
    respond_to do |format|
      if @fbc.update(fbc_params)
        format.html { redirect_to @fbc, notice: "Client was successfully updated." }
        format.json { render :show, status: :ok, location: @fbc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fbc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fbcs/1 or /fbcs/1.json
  def destroy
    @fbc.destroy
    respond_to do |format|
      format.html { redirect_to fbcs_url, notice: "Client was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fbc
      @fbc = Fbc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fbc_params
      params.require(:fbc).permit(:project, :status, :CSM, :Support_Engineer, :Equipment, :Warranty_Start_Date, :Staff_Dashboard, :Live_Locations, :Total_Locations, :Support_Coverage, :SLA)
    end
end
