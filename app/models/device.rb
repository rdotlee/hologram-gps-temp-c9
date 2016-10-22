class Device < ActiveRecord::Base
    has_many :devicereadings, :class_name => "devicereading", :foreign_key =>"devicereading_id"
end
