class Category < ActiveRecord::Base
  has_many :products
  has_many :sub_categories
  validates_presence_of :name
end
