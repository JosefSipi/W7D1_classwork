class SessionsController < ApplicationController


    def new
        @user = User.create
        render :new
    end

    def create
        # verify username password
        # reset user session token
        # redirect to cats index page
        @user = User.find_by_credentials(params[:user][:user_name], params[:user][:password])
        if @user
            login!(@user)
            redirect_to cats_url
        else
            
        end
    end

    def destroy

    end

    def login!(user)
        # update session hash with new session token
    end

end