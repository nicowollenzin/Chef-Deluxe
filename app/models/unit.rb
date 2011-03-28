class Unit < ActiveRecord::Base
  attr_accessible :name, :description
  
  belongs_to :ingredient
end
