class DevicesController < ApplicationController
  def index
    @devices = Device.all
  end

  def show
    @device = Device.find(params[:id])
    @readings = Devicereading.where(device_id: params[:id]).order(created_at: :desc)
  end

  def new
    @device = Device.new
  end

  def create
    @device = Device.new
    @device.name = params[:name]
    @device.sim = params[:sim]
    @device.hologramdevice_id = params[:hologramdevice_id]

    if @device.save
      redirect_to "/devices", :notice => "Device created successfully."
    else
      render 'new'
    end
  end

  def edit
    @device = Device.find(params[:id])
  end

  def update
    @device = Device.find(params[:id])

    @device.name = params[:name]
    @device.sim = params[:sim]
    @device.hologramdevice_id = params[:hologramdevice_id]

    if @device.save
      redirect_to "/devices", :notice => "Device updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @device = Device.find(params[:id])

    @device.destroy

    redirect_to "/devices", :notice => "Device deleted."
  end
end
