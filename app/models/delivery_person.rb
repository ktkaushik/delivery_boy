class DeliveryPerson < ActiveRecord::Base
  has_many :deliveries
  belongs_to :courier_company
end