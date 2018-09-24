class SessionController < ApplicationController
	
	helper_method :status_user

	def new

	end

	def create
		username =params[:username]
		password = params[:password]

		user = Account.find_by_username(username)

		if user
			if user.authenticate(password)
				role = Role.find(user.role_id)

				if role
					if role.name == 'admin'
						session[:user_id] = user.id 
						redirect_to admin_index_path,notice: 'Berhasil login'
					elsif role.name == 'member'
						session[:user_id] = user.id
						redirect_to admin_index_path,notice: 'Berhasil login'
					end
				end
			else
				redirect_to new_session_path,notice:'password atau username anda salah'
				
			end
		else
			redirect_to new_session_path,notice:'password atau username anda salah'
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to new_session_path,notice: "Anda telah logout"
	end

end
