class UsersController < ApplicationController



    def show
        @user = User.find(params[:id])
        @projects = Project.all
    end


end