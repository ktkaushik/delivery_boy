class NotificationMailer < ActionMailer::Base

  FROMEMAIL = Rails.application.config.emails[:from_email]

  def notify_seller(seller, courier_company, delivery_person, delivery)
    @seller           = seller
    @delivery         = delivery
    @to_email         = @seller.email
    @courier_company  = courier_company
    @delivery_person  = delivery_person
    @subject          = "Your consumer has received his delivery from #{@courier_company}"
    send_mail
  end

  def notify_courier_company(seller, courier_company, delivery_person, delivery)
    @seller           = seller
    @delivery         = delivery
    @courier_company  = courier_company
    @to_email         = @courier_company.email
    @delivery_person  = delivery_person
    @subject          = "#{@delivery_person} has delivered the package"
    send_mail
  end

  def send_mail
    mail(
        to:       @to_email,
        from:     FROMEMAIL,
        subject:  @subject
      )
  end
end