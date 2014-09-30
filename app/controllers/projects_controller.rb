class ProjectsController < ApplicationController

    before_action :authenticate_user!

    def index
        @projects = Project.where(user_id: current_user.id).order('created_at DESC')
    end

    def show
        @project = Project.find params[:id]
        @post = Post.new
        @document = Document.new
    end

    def new
        @project = Project.new
    end

    def create
        @project = Project.create(project_params)
        @project.user_id = current_user.id
        @project.save
        redirect_to projects_path
    end


    private

    def project_params
        params.require(:project).permit(:title, :description, :category)
    end


end