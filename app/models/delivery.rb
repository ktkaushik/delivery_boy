class Delivery < ActiveRecord::Base
  belongs_to :delivery_person
  belongs_to :courier_company
  belongs_to :seller
end
