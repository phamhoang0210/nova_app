class SessionsController < ApplicationController
  layout "account"
  # validate check user login
  # skip_before_action :require_login, only: [:new, :create]
  def new
  end
  def create
     # user = params[:session][:email]
     # password = params[:session][:password]
    # begin
    #  @lg = RestClient.post 'https://authservice.edumall.io/auth/sign_in', {email: user, password: password}
    #   @login = JSON.parse @lg.body
    #   @user_id = @login['data']['id']
    #   @email = @login['data']['email']
    #   @curent = @login['data']
    #   #header
    #   @lg_headers = @lg.headers
    #   @client = @lg_headers[:client]
    #   @access_token = @lg_headers[:access_token]
    #   @uid = @lg_headers[:uid]
    # rescue => ex
    #   flash[:danger] = "Invalid email/password combination"
    # end
    # # binding.pry

    # if @lg.nil?
    #    flash[:danger] = "Invalid email/password combination"
    #    render :new
    # else
    #    flash[:success] = "Login success"
    #   # log_in user
    #    redirect_to admin_path
    # end
  end
end
