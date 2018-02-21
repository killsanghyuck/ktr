class CreateVoucherPlanes < ActiveRecord::Migration[5.1]
  def change
    create_table :voucher_planes do |t|
      t.references :trip_schedule_detail, foreign_key: true
      t.references :user, foreign_key: true
      t.text :memo
      t.string :name_ko
      t.timestamps
    end
  end
end
