class AccountController < ApplicationController
	def new
		@user = Account.new
	end
end
