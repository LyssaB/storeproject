class UserMailer < ApplicationMailer
  default from: "melissadawn189@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
      :to => "lyssasstuff@gmail.com",
      :subject => "You've got mail from #{name}")
  end

  def welcome(user)
    @appname = "Melissa Dawn Designs"
    mail( :to => user.email,
      :subject => "Welcome to #{@appname}!")
  end

  def order_confirmation(order)
    @order = order
    mail(:from => 'melissadawn189@gmail.com',
      :to => order.user.email,
      :subject => "Thank you for your order! #{order.id}")
  end
  
end
