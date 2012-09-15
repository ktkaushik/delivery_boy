class SellerCourierDeal < ActiveRecord::Base
  belongs_to :seller
  belongs_to :courier_company
end