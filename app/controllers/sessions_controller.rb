class SessionsController < ApplicationController

  skip_before_action :check_user, only: [ :new, :create, :failure]


  def new
  end

  def create  
    user = User.from_omniauth(env["omniauth.auth"])  
    session[:user_id] = user.id
    redirect_to nodes_path, notice: "登陆成功!"
  end
  
  def destroy  
    session[:user_id] = nil  
    redirect_to nodes_path, notice: "注销成功!"  
  end  
  
  def failure  
    flash[:notice] = "用户名或密码错误"
    redirect_to sessions_new_path
  end  
  

end
