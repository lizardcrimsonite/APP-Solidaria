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
    @help.user = User.first # Temporal: Asignar un usuario hasta que implementemos la autenticación
    @help.need = Need.first # Temporal: Asignar una necesidad para pruebas
    if @help.save
      redirect_to @help, notice: "Ayuda creada con éxito."
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
