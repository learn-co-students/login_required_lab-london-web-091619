class SessionsController < ApplicationController
    def new
    end

    def create
        
        unless params[:name].to_s == ''
        session[:name] = params[:name]
        redirect_to '/show'
        else
            redirect_to '/login'
        end
    end

    def destroy
        session.delete :name
        redirect_to '/login'
    end
end
