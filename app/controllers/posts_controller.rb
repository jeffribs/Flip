class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)
        redirect_to projects_path
    end

    def show
        @post = Post.find params[:id]
    end

    private

    def post_params
        params.require(:post).permit(:title, :description).merge(project_id: params[:project_id])
    end

end