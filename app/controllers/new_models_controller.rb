class NewModelsController < ApplicationController
  before_action :set_new_model, only: [:show, :edit, :update, :destroy]

  # GET /new_models
  # GET /new_models.json
  def index
    @new_models = NewModel.all
  end

  # GET /new_models/1
  # GET /new_models/1.json
  def show
  end

  # GET /new_models/new
  def new
    @new_model = NewModel.new
  end

  # GET /new_models/1/edit
  def edit
  end

  # POST /new_models
  # POST /new_models.json
  def create
    @new_model = NewModel.new(new_model_params)

    respond_to do |format|
      if @new_model.save
        format.html { redirect_to @new_model, notice: 'New model was successfully created.' }
        format.json { render :show, status: :created, location: @new_model }
      else
        format.html { render :new }
        format.json { render json: @new_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_models/1
  # PATCH/PUT /new_models/1.json
  def update
    respond_to do |format|
      if @new_model.update(new_model_params)
        format.html { redirect_to @new_model, notice: 'New model was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_model }
      else
        format.html { render :edit }
        format.json { render json: @new_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_models/1
  # DELETE /new_models/1.json
  def destroy
    @new_model.destroy
    respond_to do |format|
      format.html { redirect_to new_models_url, notice: 'New model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_model
      @new_model = NewModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_model_params
      params.require(:new_model).permit(:description, :email_address)
    end
end
