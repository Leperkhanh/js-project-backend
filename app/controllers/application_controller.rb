class ApplicationController < ActionController::Base
    protect_from_forgery prepend: true

    def current_user 
        user = User.first
    end
end
