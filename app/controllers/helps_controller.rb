class HelpsController < ApplicationController
  def index
    @helps = Help.all
  end

  def show
    @help = Help.find(params[:id])
  end

  def new
    @help = Help.new
  end

  def create
    @help = Help.new(help_params)
    if @help.save
      Notification.create(message: "Se ha ofrecido ayuda para tu necesidad", need: @help.need)
      redirect_to @help, notice: "Ayuda creada y notificación enviada."
    else
      render :new
    end
  end
  

  def edit
    @help = Help.find(params[:id])
  end

  def update
    @help = Help.find(params[:id])
    if @help.update(help_params)
      redirect_to @help, notice: "Ayuda actualizada con éxito."
    else
      render :edit
    end
  end

  private

  def help_params
    params.require(:help).permit(:status)
  end
end
