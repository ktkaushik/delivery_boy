class Seller < ActiveRecord::Base
  has_many :deliveries
  has_many :seller_courier_deals
  has_many :courier_companies, through: :seller_courier_deals
end