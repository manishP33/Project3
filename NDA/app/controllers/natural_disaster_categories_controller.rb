class NaturalDisasterCategoriesController < ApplicationController
  before_action :set_natural_disaster_category, only: [:show, :edit, :update, :destroy]

  # GET /natural_disaster_categories
  # GET /natural_disaster_categories.json
  def index
    @natural_disaster_categories = NaturalDisasterCategory.all
  end

  # GET /natural_disaster_categories/1
  # GET /natural_disaster_categories/1.json
  def show
  end

  # GET /natural_disaster_categories/new
  def new
    @natural_disaster_category = NaturalDisasterCategory.new
  end

  # GET /natural_disaster_categories/1/edit
  def edit
  end

  # POST /natural_disaster_categories
  # POST /natural_disaster_categories.json
  def create
    @natural_disaster_category = NaturalDisasterCategory.new(natural_disaster_category_params)

    respond_to do |format|
      if @natural_disaster_category.save
        format.html { redirect_to @natural_disaster_category, notice: 'Natural disaster category was successfully created.' }
        format.json { render :show, status: :created, location: @natural_disaster_category }
      else
        format.html { render :new }
        format.json { render json: @natural_disaster_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /natural_disaster_categories/1
  # PATCH/PUT /natural_disaster_categories/1.json
  def update
    respond_to do |format|
      if @natural_disaster_category.update(natural_disaster_category_params)
        format.html { redirect_to @natural_disaster_category, notice: 'Natural disaster category was successfully updated.' }
        format.json { render :show, status: :ok, location: @natural_disaster_category }
      else
        format.html { render :edit }
        format.json { render json: @natural_disaster_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /natural_disaster_categories/1
  # DELETE /natural_disaster_categories/1.json
  def destroy
    @natural_disaster_category.destroy
    respond_to do |format|
      format.html { redirect_to natural_disaster_categories_url, notice: 'Natural disaster category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_natural_disaster_category
      @natural_disaster_category = NaturalDisasterCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def natural_disaster_category_params
      params.require(:natural_disaster_category).permit(:title, :photo_url)
    end
end
