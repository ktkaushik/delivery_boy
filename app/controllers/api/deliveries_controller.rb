class Api::DeliveriesController < ApplicationController
  protect_from_forgery :except => [:create]

  respond_to :json

  def create
    @delivery         = Delivery.find(params["transaction_id"])
    @seller           = @delivery.seller
    @courier_company  = @delivery.courier_company
    @delivery_person  = @delivery.delivery_person

    # Updating attributes to mark it delivered !
    if @delivery.update_attributes( delivered: true )
      # Trigger to send mail
      NotificationMailer.delay.notify_seller( @seller, @courier_company, @delivery_person, @delivery)
      NotificationMailer.delay.notify_courier_company( @seller, @courier_company, @delivery_person, @delivery)
      respond_with( @delivery, :status => :created , :location => nil)
    else
      respond_with( @delivery.errors, :status => :unprocessable_entity , :location => nil)
    end
  end
end