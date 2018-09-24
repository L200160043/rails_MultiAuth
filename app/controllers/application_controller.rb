class ApplicationController < ActionController::Base

	helper_method :status_user
	def status_user
		if session[:user_id]
			Account.find(session[:user_id])
		else
			nil
		end
	end

	def have_signed?
		if status_user
			true
		else
			redirect_to new_session_path,notice: 'Silahkan login terlebih dahulu'
			return false
		end
	end


end
