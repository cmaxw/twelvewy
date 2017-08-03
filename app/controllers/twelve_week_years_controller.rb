class TwelveWeekYearsController < ApplicationController
  before_action :set_twelve_week_year, only: [:show, :edit, :update, :destroy]

  # GET /twelve_week_years
  # GET /twelve_week_years.json
  def index
    @twelve_week_years = TwelveWeekYear.all
  end

  # GET /twelve_week_years/1
  # GET /twelve_week_years/1.json
  def show
  end

  # GET /twelve_week_years/new
  def new
    @twelve_week_year = TwelveWeekYear.new
  end

  # GET /twelve_week_years/1/edit
  def edit
  end

  # POST /twelve_week_years
  # POST /twelve_week_years.json
  def create
    @twelve_week_year = TwelveWeekYear.new(twelve_week_year_params)

    respond_to do |format|
      if @twelve_week_year.save
        format.html { redirect_to @twelve_week_year, notice: 'Twelve week year was successfully created.' }
        format.json { render :show, status: :created, location: @twelve_week_year }
      else
        format.html { render :new }
        format.json { render json: @twelve_week_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twelve_week_years/1
  # PATCH/PUT /twelve_week_years/1.json
  def update
    respond_to do |format|
      if @twelve_week_year.update(twelve_week_year_params)
        format.html { redirect_to @twelve_week_year, notice: 'Twelve week year was successfully updated.' }
        format.json { render :show, status: :ok, location: @twelve_week_year }
      else
        format.html { render :edit }
        format.json { render json: @twelve_week_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twelve_week_years/1
  # DELETE /twelve_week_years/1.json
  def destroy
    @twelve_week_year.destroy
    respond_to do |format|
      format.html { redirect_to twelve_week_years_url, notice: 'Twelve week year was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twelve_week_year
      @twelve_week_year = TwelveWeekYear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twelve_week_year_params
      params.require(:twelve_week_year).permit(:name, :starts_on, :ends_on)
    end
end
