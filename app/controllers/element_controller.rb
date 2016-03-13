class ElementController < ApplicationController
  def show
    @formations = Element.where(:genre => 'form')
    @ExpProfs   = Element.where(:genre => 'exp')
  end
end
