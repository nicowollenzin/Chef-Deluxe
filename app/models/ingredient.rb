class Ingredient < ActiveRecord::Base
  has_many :units

  belongs_to :recipe
end
