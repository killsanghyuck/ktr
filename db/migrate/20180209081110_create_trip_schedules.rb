class CreateTripSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :trip_schedules do |t|
      t.references :user, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.integer :aduit
      t.integer :kid
      t.timestamps
    end
  end
end
