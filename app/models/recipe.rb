class Recipe < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged


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
  
  def should_generate_new_friendly_id?
    name_changed? || slug.blank?
  end   
end
