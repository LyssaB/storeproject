class Order < ApplicationRecord
	belongs_to :product
	belongs_to :user

	after_create :send_order_confirmation
	def send_order_confirmation
		UserMailer.order_confirmation(self).deliver
	end
end