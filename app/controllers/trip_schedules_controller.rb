class TripSchedulesController < ApplicationController
  before_action :set_trip_schedule, only: [:show, :edit, :update, :destroy]

  # GET /trip_schedules
  # GET /trip_schedules.json
  def index
    @trip_schedules = TripSchedule.all
  end

  # GET /trip_schedules/1
  # GET /trip_schedules/1.json
  def show
  end

  # GET /trip_schedules/new
  def new
    @trip_schedule = TripSchedule.new
  end

  # GET /trip_schedules/1/edit
  def edit
  end

  # POST /trip_schedules
  # POST /trip_schedules.json
  def create
    @trip_schedule = TripSchedule.new(trip_schedule_params)

    respond_to do |format|
      if @trip_schedule.save
        format.html { redirect_to @trip_schedule, notice: 'Trip schedule was successfully created.' }
        format.json { render :show, status: :created, location: @trip_schedule }
      else
        format.html { render :new }
        format.json { render json: @trip_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trip_schedules/1
  # PATCH/PUT /trip_schedules/1.json
  def update
    respond_to do |format|
      if @trip_schedule.update(trip_schedule_params)
        format.html { redirect_to @trip_schedule, notice: 'Trip schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip_schedule }
      else
        format.html { render :edit }
        format.json { render json: @trip_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_schedules/1
  # DELETE /trip_schedules/1.json
  def destroy
    @trip_schedule.destroy
    respond_to do |format|
      format.html { redirect_to trip_schedules_url, notice: 'Trip schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip_schedule
      @trip_schedule = TripSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_schedule_params
      params.require(:trip_schedule).permit(:user_id)
    end
end
