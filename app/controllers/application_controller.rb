class ApplicationController < ActionController::Base

    def login
        user = User.find_by(email: params[:email])
        render json: user
    end

    def logout!
        session.clear
    end

end
