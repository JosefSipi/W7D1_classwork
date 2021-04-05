class UsersController < ApplicationController
    before_action :require_logged_out, only: [:create, :new]

    def new
        @user = User.new
        render :new
    end

    def create
        user = User.new(params.require(:user).permit(:user_name, :password))
        if user.save!
            login!(user)
            redirect_to cats_url
        else
            render :new
        end
    end
    
end