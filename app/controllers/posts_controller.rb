class PostsController < ApplicationController

    before_action :authenticate_user!

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        # @post = Post.create(post_params)
        @post = current_user.posts.create post_params

        redirect_to @post.project
        @document = Document.create doc_params
    end

    def show
        @post = Post.find params[:id]
    end

    private

    def post_params
        params.require(:post).permit(:title, :description).merge(project_id: params[:project_id])
    end

    def doc_params
        params.require(:document).permit(:attachment).merge(post_id: params[:post_id])
    end

end