class Plan < ActiveRecord::Base
  validates :description, presence: true
  
end
