#encoding: utf-8
class HomeController < ApplicationController

  #layout :"materialize"
  def index
    #$array=["c","j","m"]
    @titulo= "Estamos en la página principal"

  end

  def quienes_somos   
    @titulo= "Estamos en quienes somos"
    if request.post?
      archivo=params[:archivo]
      nombre=archivo.original_filename
      render:text => nombre
    end
        
  end

  def localizacion
    @titulo= "Estamos en localizacion"
    
  end

  def servicios
    @titulo="Estamos en servicios"
    
  end

  def contacto
    #if request.get?
     # @titulo="Estamos por el metodo get"
      #if Array.mirar.include?(params[:nombre])
       # render :text =>"Si existe"
      #else
      #  render :text => "No existe"
      #end
    #else
     # @titulo="estamso en post"
      #@valor=params[:id]
      #@nom=params[:nombre]
      #@var=Array.new
      #@var.borrar(@valor)
      #Agregar
      #Array.agregar(@nom)
      #redirect_to root_path
    #end
    @titulo="Estamos en contacto"
    Email.recepcion.deliver
  end

end
