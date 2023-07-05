class SnapdbsController < ApplicationController
  before_action :set_snapdb, only: %i[ show edit update destroy ]

  # GET /snapdbs or /snapdbs.json
  def index
    @snapdbs = Snapdb.all
  end

  # GET /snapdbs/1 or /snapdbs/1.json
  def show
  end

  # GET /snapdbs/new
  def new
    @snapdb = Snapdb.new
  end

  # GET /snapdbs/1/edit
  def edit
  end

  # POST /snapdbs or /snapdbs.json
  def create
    @snapdb = Snapdb.new(snapdb_params)

    respond_to do |format|
      if @snapdb.save
        format.html { redirect_to snapdb_url(@snapdb), notice: "Snapdb was successfully created." }
        format.json { render :show, status: :created, location: @snapdb }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @snapdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /snapdbs/1 or /snapdbs/1.json
  def update
    respond_to do |format|
      if @snapdb.update(snapdb_params)
        format.html { redirect_to snapdb_url(@snapdb), notice: "Snapdb was successfully updated." }
        format.json { render :show, status: :ok, location: @snapdb }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @snapdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snapdbs/1 or /snapdbs/1.json
  def destroy
    @snapdb.destroy

    respond_to do |format|
      format.html { redirect_to snapdbs_url, notice: "Snapdb was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snapdb
      @snapdb = Snapdb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def snapdb_params
      params.require(:snapdb).permit(:title, :color, :image)
    end
end
