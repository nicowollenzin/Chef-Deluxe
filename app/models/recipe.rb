class Recipe < ActiveRecord::Base
  attr_accessible :user_id, :name, :description, :ingredients_attributes
  
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
end
