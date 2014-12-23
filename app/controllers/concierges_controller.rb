class ConciergesController < ApplicationController
  before_action :set_concierge, only: [:show, :edit, :update, :destroy]

  # GET /concierges
  # GET /concierges.json
  def index
    @concierges = Concierge.all
  end

  # GET /concierges/1
  # GET /concierges/1.json
  def show
  end

  # GET /concierges/new
  def new
    @concierge = Concierge.new
  end

  # GET /concierges/1/edit
  def edit
  end

  # POST /concierges
  # POST /concierges.json
  def create
    @concierge = Concierge.new(concierge_params)

    respond_to do |format|
      if @concierge.save
        format.html { redirect_to @concierge, notice: 'Concierge was successfully created.' }
        format.json { render :show, status: :created, location: @concierge }
      else
        format.html { render :new }
        format.json { render json: @concierge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /concierges/1
  # PATCH/PUT /concierges/1.json
  def update
    respond_to do |format|
      if @concierge.update(concierge_params)
        format.html { redirect_to @concierge, notice: 'Concierge was successfully updated.' }
        format.json { render :show, status: :ok, location: @concierge }
      else
        format.html { render :edit }
        format.json { render json: @concierge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /concierges/1
  # DELETE /concierges/1.json
  def destroy
    @concierge.destroy
    respond_to do |format|
      format.html { redirect_to concierges_url, notice: 'Concierge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_concierge
      @concierge = Concierge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def concierge_params
      params.require(:concierge).permit(:phone, :name, :email)
    end
end
