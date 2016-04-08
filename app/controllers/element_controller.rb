class ElementController < ApplicationController
  def show
    @formations = Element.where(:genre => 'form').order(order: :desc).order(order: :desc)
    @ExpProfs   = Element.where(:genre => 'exp').order(order: :desc)
    @lien = 'http://didierclin.ovh'
  end
end
