class ReitingsController < ApplicationController
  before_action :set_reiting, only: %i[ show edit update destroy ]

  # GET /reitings or /reitings.json
  def index
    @reitings = Reiting.all
  end

  # GET /reitings/1 or /reitings/1.json
  def show
  end

  # GET /reitings/new
  def new
    @reiting = Reiting.new
  end

  # GET /reitings/1/edit
  def edit
  end

  # POST /reitings or /reitings.json
  def create
    @reiting = Reiting.new(reiting_params)

    respond_to do |format|
      if @reiting.save
        format.html { redirect_to reiting_url(@reiting), notice: "Reiting was successfully created." }
        format.json { render :show, status: :created, location: @reiting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reiting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reitings/1 or /reitings/1.json
  def update
    respond_to do |format|
      if @reiting.update(reiting_params)
        format.html { redirect_to reiting_url(@reiting), notice: "Reiting was successfully updated." }
        format.json { render :show, status: :ok, location: @reiting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reiting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reitings/1 or /reitings/1.json
  def destroy
    @reiting.destroy

    respond_to do |format|
      format.html { redirect_to reitings_url, notice: "Reiting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reiting
      @reiting = Reiting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reiting_params
      params.require(:reiting).permit(:reiting, :id_tovar)
    end
end
