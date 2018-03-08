class Product < ActiveRecord::Base
  has_many :reviews
  has_many :cart_line_items
  belongs_to :sub_category
  belongs_to :category
  #inbuilt
  validates_presence_of :name, :price, :category_id, :description, :stock, :sub_category_id
  validates_numericality_of :price, greater_than: 1
  validates_numericality_of :stock, greater_than_or_equal_to: 0
  validates_numericality_of :category_id, :sub_category_id, greater_than: 0
  validates_length_of :description, minimum: 20
  validates_length_of :name, minimum: 4
end
