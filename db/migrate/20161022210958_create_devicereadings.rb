class CreateDevicereadings < ActiveRecord::Migration
  def change
    create_table :devicereadings do |t|
      t.string :lat
      t.string :lng
      t.float :tmp
      t.float :hum
      t.integer :fix
      t.integer :satellites
      t.string :gpstime
      t.integer :batt
      t.integer :device_id

      t.timestamps

    end
  end
end
