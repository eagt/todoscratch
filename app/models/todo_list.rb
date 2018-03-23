class TodoList < ApplicationRecord

 validates_presence_of :name

 has_many :categories 
 has_many :tasks, through: :categories, dependent: :destroy
 accepts_nested_attributes_for :categories, allow_destroy: true, # In the "MAIN" table the accepts object is shown in plural
 							   reject_if: proc { |att| att ['name'].blank?}

end
