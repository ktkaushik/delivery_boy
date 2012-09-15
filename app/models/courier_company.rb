class CourierCompany < ActiveRecord::Base
  has_many :delivery_people
  has_many :seller_courier_deals
  
  # has_many :deliveries, through: :delivery_people
  has_many :deliveries
  has_many :sellers, 	through: :seller_courier_deals
end