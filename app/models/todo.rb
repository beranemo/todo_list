class Todo < ApplicationRecord
  validates_presence_of :event, :due_date, :description, :finish  

  end
