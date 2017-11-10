class CustomersController < ApplicationController
	def index
		@customers = Customer.all
	end

	def alphabetized
		@customers = Customer.all.order(:full_name);
	end

	def missingEmail
		@customers = Customer.where(email_address: "")
	end
end
