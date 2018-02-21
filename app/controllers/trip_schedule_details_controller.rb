class TripScheduleDetailsController < ApplicationController
  before_action :set_trip_schedule_detail, only: [:show, :edit, :update, :destroy]

  # GET /trip_schedule_details
  # GET /trip_schedule_details.json
  def index
    @trip_schedule_details = TripScheduleDetail.all
  end

  # GET /trip_schedule_details/1
  # GET /trip_schedule_details/1.json
  def show
  end

  # GET /trip_schedule_details/new
  def new
    @trip_schedule_detail = TripScheduleDetail.new
  end

  # GET /trip_schedule_details/1/edit
  def edit
  end

  # POST /trip_schedule_details
  # POST /trip_schedule_details.json
  def create
    @trip_schedule_detail = TripScheduleDetail.new(trip_schedule_detail_params)

    respond_to do |format|
      if @trip_schedule_detail.save
        format.html { redirect_to sd, notice: 'Trip schedule detail was successfully created.' }
        format.json { render :show, status: :created, location: @trip_schedule_detail }
      else
        format.html { render :new }
        format.json { render json: @trip_schedule_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trip_schedule_details/1
  # PATCH/PUT /trip_schedule_details/1.json
  def update
    respond_to do |format|
      if @trip_schedule_detail.update(trip_schedule_detail_params)
        format.html { redirect_to @trip_schedule_detail, notice: 'Trip schedule detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip_schedule_detail }
      else
        format.html { render :edit }
        format.json { render json: @trip_schedule_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_schedule_details/1
  # DELETE /trip_schedule_details/1.json
  def destroy
    @trip_schedule_detail.destroy
    respond_to do |format|
      format.html { redirect_to trip_schedule_details_url, notice: 'Trip schedule detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip_schedule_detail
      @trip_schedule_detail = TripScheduleDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_schedule_detail_params
      # params.require(:trip_schedule_detail).permit(:trip_schudule_id)
r    end
end
