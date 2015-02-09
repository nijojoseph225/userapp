class UesertypesController < ApplicationController
  before_action :set_uesertype, only: [:show, :edit, :update, :destroy]

  # GET /uesertypes
  # GET /uesertypes.json
  def index
    @uesertypes = Uesertype.all
  end

  # GET /uesertypes/1
  # GET /uesertypes/1.json
  def show
  end

  # GET /uesertypes/new
  def new
    @uesertype = Uesertype.new
  end

  # GET /uesertypes/1/edit
  def edit
  end

  # POST /uesertypes
  # POST /uesertypes.json
  def create
    @uesertype = Uesertype.new(uesertype_params)

    respond_to do |format|
      if @uesertype.save
        format.html { redirect_to @uesertype, notice: 'Uesertype was successfully created.' }
        format.json { render :show, status: :created, location: @uesertype }
      else
        format.html { render :new }
        format.json { render json: @uesertype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uesertypes/1
  # PATCH/PUT /uesertypes/1.json
  def update
    respond_to do |format|
      if @uesertype.update(uesertype_params)
        format.html { redirect_to @uesertype, notice: 'Uesertype was successfully updated.' }
        format.json { render :show, status: :ok, location: @uesertype }
      else
        format.html { render :edit }
        format.json { render json: @uesertype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uesertypes/1
  # DELETE /uesertypes/1.json
  def destroy
    @uesertype.destroy
    respond_to do |format|
      format.html { redirect_to uesertypes_url, notice: 'Uesertype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uesertype
      @uesertype = Uesertype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uesertype_params
      params.require(:uesertype).permit(:name, :description)
    end
end
