class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session
    before_action :today
   
    def today
        @today = Date.current.strftime("%Y年%m月%d日")
    end

end