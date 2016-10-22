class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name
      t.string :sim
      t.integer :hologramdevice_id

      t.timestamps

    end
  end
end
