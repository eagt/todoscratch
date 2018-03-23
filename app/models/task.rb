class Task < ApplicationRecord
  has_many :categories
  has_many :todo_lists, through: :categories
end
