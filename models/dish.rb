class Dish < ActiveRecord::Base
  has_many :comments
  has_many :likes
  belongs_to :user # these add extra methods
end