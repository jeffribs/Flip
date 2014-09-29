class ProjectsController < ApplicationController

    def index
        @projects = Project.all
    end

    def show
        @project = Project.find params[:id]
        @post
    end

    def new
        @project = Project.new
    end

    def create
        @project = Project.create(project_params)
        redirect_to projects_path
    end


    private

    def project_params
        params.require(:project).permit(:title, :description, :category)
    end


end