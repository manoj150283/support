class FbtsController < ApplicationController
  before_action :set_fbt, only: %i[ show edit update destroy ]

  # GET /fbts or /fbts.json
  def index
    @fbts = Fbt.all
  end

  # GET /fbts/1 or /fbts/1.json
  def show
  end

  # GET /fbts/new
  def new
    @fbt = Fbt.new
  end

  # GET /fbts/1/edit
  def edit
  end

  # POST /fbts or /fbts.json
  def create
    @fbt = Fbt.new(fbt_params)

    respond_to do |format|
      if @fbt.save
        format.html { redirect_to @fbt, notice: "Fbt was successfully created." }
        format.json { render :show, status: :created, location: @fbt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fbt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fbts/1 or /fbts/1.json
  def update
    respond_to do |format|
      if @fbt.update(fbt_params)
        format.html { redirect_to @fbt, notice: "Client was successfully updated." }
        format.json { render :show, status: :ok, location: @fbt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fbt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fbts/1 or /fbts/1.json
  def destroy
    @fbt.destroy
    respond_to do |format|
      format.html { redirect_to fbts_url, notice: "Client was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fbt
      @fbt = Fbt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fbt_params
      params.require(:fbt).permit(:project, :status, :radius_poc, :support_engineer, :equipment, :warranty_start_date, :number_of_locations, :support_coverage, :sla, :tent_set_type)
    end
end
