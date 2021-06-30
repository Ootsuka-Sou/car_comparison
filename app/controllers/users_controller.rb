class UsersController < ApplicationController
  #before_actionはRuby on Railsのコールバックと呼ばれるメソッド
  #コールバックは特定のタイミングで呼び出されるメソッド
  #before_actionはアクションが呼び出される前に呼び出される
  before_action :set_user
  
  def edit
    
  end

  def update
    #update_without_passwordメソッドはパスワード無しでユーザー情報を更新できるメソッド
    @user.update_without_password(user_params)
    redirect_to mypage_users_url
  end

  def mypage
    
  end
  
  def show
    @user = current_user
  end
  
  private
  
  def set_user
    @user = current_user
  end
  
  def user_params
    params.permit(:email, :encrypted_password, :reset_password_token, :name)
  
  end
end
