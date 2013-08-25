class BeingsController < ApplicationController
  before_action :set_being, only: [:show, :edit, :update, :destroy]

  # GET /beings
  # GET /beings.json
  def index
    @beings = Being.all
  end

  # GET /beings/1
  # GET /beings/1.json
  def show
  end

  # GET /beings/new
  def new
    @being = Being.new
  end

  # GET /beings/1/edit
  def edit
  end

  # POST /beings
  # POST /beings.json
  def create
    @being = Being.new(being_params)

    respond_to do |format|
      if @being.save
        format.html { redirect_to @being, notice: 'Being was successfully created.' }
        format.json { render action: 'show', status: :created, location: @being }
      else
        format.html { render action: 'new' }
        format.json { render json: @being.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beings/1
  # PATCH/PUT /beings/1.json
  def update
    respond_to do |format|
      if @being.update(being_params)
        format.html { redirect_to @being, notice: 'Being was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @being.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beings/1
  # DELETE /beings/1.json
  def destroy
    @being.destroy
    respond_to do |format|
      format.html { redirect_to beings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_being
      @being = Being.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def being_params
      params.require(:being).permit(:surname, :given_name, :age, :alive, :title, :gender, :ancestry)
    end
end
