module SessionsHelper

    def current_user
    	# @current_user ||= User.find_by id: session[:user_id]
    	@current_user ||=  @curent 
    end
    #check user has login and before?
    def logged_in
        current_user.present?
    end
end
