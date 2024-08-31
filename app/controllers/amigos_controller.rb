class AmigosController < ApplicationController
  def index
    @amigos = Amigo.all
  end

  def new
    @amigo = Amigo.new
  end

  def create
    @amigo = Amigo.new(amigo_params)
    if @amigo.save
      redirect_to amigos_path
    else
      render 'new'
    end
  end

  def edit
    @amigo = Amigo.find(params[:id])
  end

  def update
    @amigo = Amigo.find(params[:id])
    if @amigo.update(amigo_params)
      redirect_to amigos_path
    else
      render 'edit'
    end
  end

  def destroy
    @amigo = Amigo.find(params[:id])
    @amigo.destroy
    redirect_to amigos_path, notice: 'Amigo eliminado exitosamente.'
  end

  private

  def amigo_params
    params.require(:amigo).permit(:nombre, :fecha_cumpleanos)
  end
end
