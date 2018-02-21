class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.references :user, foreign_key: true
      t.string :name_ko
      t.string :name_eng
      t.boolean :show_yn
      t.timestamps
    end
  end
end
