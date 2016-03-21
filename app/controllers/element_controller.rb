class ElementController < ApplicationController
  def show
    @formations = Element.where(:genre => 'form')
    @ExpProfs   = Element.where(:genre => 'exp')
    @lien = 'http://didierclin.ovh'
  end
end
