class AirplanesController < ApplicationController
  def index
    @airplanes = Airplane.all
  end

  def new
    @airplane = Airplane.new
  end

  def create
    @airplane = Airplane.new(airplane_params)
    if @airplane.save
      redirect_to @airplane
    else
      # TODO: store error messages in the flash hash
      flash[:error] = @airplane.errors.full_messages.join(" ")
      render :new
    end
  end

  def show
    @airplane = Airplane.find(params[:id])
  end

  def airplane_params
    params.require(:airplane).permit(:name, :description)
  end
end
