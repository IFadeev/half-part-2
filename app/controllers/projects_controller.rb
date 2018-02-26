class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end
  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  
  def update
    Todo.find(params[:commit]).update(isCompleted:params[:isCompleted])
    redirect_to :root
  end

end