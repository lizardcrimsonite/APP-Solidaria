class NeedsController < ApplicationController
  def index
    @needs = Need.all
  end

  def show
    @need = Need.find(params[:id])
  end

  def new
    @need = Need.new
  end

  def create
    @need = Need.new(need_params)
    @need.user = User.first # Temporal: Asignar un usuario hasta que implementemos la autenticación
    if @need.save
      redirect_to @need, notice: "Necesidad creada con éxito."
    else
      render :new
    end
  end

  def edit
    @need = Need.find(params[:id])
  end

  def update
    @need = Need.find(params[:id])
    if @need.update(need_params)
      redirect_to @need, notice: "Necesidad actualizada con éxito."
    else
      render :edit
    end
  end

  private

  def need_params
    params.require(:need).permit(:description, :status, :location)
  end
end
