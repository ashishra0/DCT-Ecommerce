class SubCategory < ActiveRecord::Base
  has_many :products
  validates_presence_of :name, :category_id, :sub_category_id
end
