class PagesController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def link

      url = "https://youtube.com/watch?v=" + params[:v]

      # if !params[:list].nil? && params[:list].empty?
      # if params[:list].present?
      #   url = url + params[:list]
      # end
      redirect_to( url )

  end
end
