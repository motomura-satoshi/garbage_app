class CreateGarbages < ActiveRecord::Migration[5.2]
  def change
    create_table :garbages do |t|
      t.string :title
      t.string :week
      t.time :alarm_time

      t.timestamps
    end
  end
end
