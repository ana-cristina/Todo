class Tasks < ActiveRecord::Base
  attr_accessible :done, :name
  
  validates :name, :presence => true
end
