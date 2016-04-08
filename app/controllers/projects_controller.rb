class ProjectsController < ApplicationController
  def index
    @projects = Project.all.order(order: :desc)
  end

  def show
    @project = Project.find(params[:project])
  end

end
