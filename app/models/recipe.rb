class Recipe < ActiveRecord::Base
  attr_accessible :user_id, :name, :description, :ingredients_attributes
  
  has_many :ingredients
  accepts_nested_attributes_for :ingredients,:reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true  
end
