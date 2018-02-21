class CreateTripScheduleDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :trip_schedule_details do |t|
      t.references :trip_schedule, foreign_key: true
      t.references :city, foreign_key: true
      t.integer :stay_count
      t.datetime :start_day
      t.datetime :end_day
      t.timestamps
    end
  end
end
