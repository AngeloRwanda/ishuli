class IkigosController < ApplicationController
  before_action :set_ikigo, only: [:show, :edit, :update, :destroy]

  # GET /ikigos
  # GET /ikigos.json
  def index
    @ikigos = Ikigo.all
  end

  # GET /ikigos/1
  # GET /ikigos/1.json
  def show
  end

  # GET /ikigos/new
  def new
    @ikigo = Ikigo.new
  end

  # GET /ikigos/1/edit
  def edit
  end

  # POST /ikigos
  # POST /ikigos.json
  def create
    @ikigo = Ikigo.new(ikigo_params)

    respond_to do |format|
      if @ikigo.save
        format.html { redirect_to @ikigo, notice: 'Ikigo was successfully created.' }
        format.json { render :show, status: :created, location: @ikigo }
      else
        format.html { render :new }
        format.json { render json: @ikigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ikigos/1
  # PATCH/PUT /ikigos/1.json
  def update
    respond_to do |format|
      if @ikigo.update(ikigo_params)
        format.html { redirect_to @ikigo, notice: 'Ikigo was successfully updated.' }
        format.json { render :show, status: :ok, location: @ikigo }
      else
        format.html { render :edit }
        format.json { render json: @ikigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ikigos/1
  # DELETE /ikigos/1.json
  def destroy
    @ikigo.destroy
    respond_to do |format|
      format.html { redirect_to ikigos_url, notice: 'Ikigo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ikigo
      @ikigo = Ikigo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ikigo_params
      params.require(:ikigo).permit(:name)
    end
end
