class Devicereading < ActiveRecord::Base
    belongs_to :device, :class_name=>"device", :foreign_key =>"device_id"
end
