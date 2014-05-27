class Recipe < ActiveRecord::Base
  has_many :ingredients
  belongs_to :user
  accepts_nested_attributes_for :ingredients,:reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true


  def owner?(user)
    if user == self.user
      return true
    else
      return false
    end
  end

end
