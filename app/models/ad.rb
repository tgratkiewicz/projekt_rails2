class Ad < ActiveRecord::Base
  attr_accessible :description, :email, :img_url, :name, :price, :user_id
end
