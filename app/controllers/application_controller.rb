class ApplicationController < ActionController::Base
    
    protect_from_forgery with: :exception
    
    #ログイン済みのユーザーのみにアクセスを許可する
    before_action :authenticate_user!
    
    #deviseコントローラーにストロングパラメータを追加する
    #ストロングパラメーターとはコントローラで送られてきたパラメータを安全に受け取る為の仕組み
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    #ストロングパラメーターの初期設定の段階では、メールアドレスとパスワードのみ
    #新しいキーを受け取らせる為には編集が必要
    protected
    def configure_permitted_parameters
        #devise_parameter_samotizer.permit(追加したいメソッドの種類, keys, [追加したいパラメーター名])
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end
    
    def update_resource(resource, params)
        resource.update_without_password(params)
    end
    
end
