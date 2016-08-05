class PagesController < ApplicationController
  def batman
  end

  def superman
  end

  def batmanVsSuperman
  end

  def votar
  	Voto.create(heroe: params[:heroe], email: params[:mail])
  	redirect_to pages_batmanVsSuperman_path, notice: "Su voto ha sido contabilizado"
  end
end
