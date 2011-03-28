class Ingredient < ActiveRecord::Base
  #attr_accessible :name, :quantity, :unit_id
  
  has_many :units
  
  belongs_to :recipe
end
