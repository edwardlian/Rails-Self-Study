class SessionsController < ApplicationController
	def create
		user = User.find_by(email: params[:email])
		if user = user.try(:authenticate, params[:password])
			session[:user_id] = user.id
			message = "歡迎回來！ #{user.name}"
		else
			message = "登入失敗！"
		end
		redirect_to root_path, notice: message
	end

	def destroy
		session.delete(:user_id)
		redirect_to root_path, notice: '登出！'
	end
end