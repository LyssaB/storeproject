class UserMailer < ApplicationMailer
	default from: "melissadawn189@gmail.com"

	def contact_form(email, name, message)
	@message = message
		mail(:from => "melissadawn189@gmail.com",
			:to => "lyssasstuff@gmail.com",
			:subject => "You've got mail from #{name}")
	end

end
