class Like < ActiveRecord::Base
  has_many :dishes
  has_many :users 
end