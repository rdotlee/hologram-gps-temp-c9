class DevicereadingsController < ApplicationController
  protect_from_forgery except: :create
  require 'json'
  def index
    @devicereadings = Devicereading.all.order(created_at: :desc)
  end

  def show
    @devicereading = Devicereading.find(params[:id])
  end

  def new
    @devicereading = Devicereading.new
  end

  def create
    @devicereading = Devicereading.new
    @devicereading.lat = params[:lat]
    @devicereading.lng = params[:lng]
    @devicereading.tmp = params[:tmp]
    @devicereading.hum = params[:hum]
    @devicereading.fix = params[:fix]
    @devicereading.satellites = params[:satellites]
    @devicereading.gpstime = params[:gpstime]
    @devicereading.batt = params[:batt]
    @devicereading.device_id = params[:device_id]

    if @devicereading.save
      redirect_to "/devicereadings", :notice => "Devicereading created successfully."
    else
      render 'new'
    end
  end
  
  def create_json
    @devicereading = Devicereading.new
    hash = JSON.parse(params[:json])
    @devicereading.lat = hash["lat"]
    @devicereading.lng = hash["lng"]
    @devicereading.tmp = hash["temp"]
    @devicereading.hum = hash["humidity"]
    @devicereading.fix = hash["fix"]
    @devicereading.satellites = hash["satellites"]
    @devicereading.gpstime = hash["time"]
    @devicereading.batt = hash["batt"]
    @devicereading.device_id = Device.find_by_hologramdevice_id(params[:hologramdevice_id]).id

    if @devicereading.save
      redirect_to "/devicereadings", :notice => "devicereading created successfully."
    else
      render 'new'
    end
  end

  def edit
    @devicereading = Devicereading.find(params[:id])
  end

  def update
    @devicereading = Devicereading.find(params[:id])

    @devicereading.lat = params[:lat]
    @devicereading.lng = params[:lng]
    @devicereading.tmp = params[:tmp]
    @devicereading.hum = params[:hum]
    @devicereading.fix = params[:fix]
    @devicereading.satellites = params[:satellites]
    @devicereading.gpstime = params[:gpstime]
    @devicereading.batt = params[:batt]
    @devicereading.device_id = params[:device_id]

    if @devicereading.save
      redirect_to "/devicereadings", :notice => "Devicereading updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @devicereading = Devicereading.find(params[:id])

    @devicereading.destroy

    redirect_to "/devicereadings", :notice => "Devicereading deleted."
  end
end
