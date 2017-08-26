class TodoList < ApplicationRecord

 validates_presence_of :name
 
 has_many :tasks, dependent: :destroy
 accepts_nested_attributes_for :tasks, allow_destroy: true,
 							   reject_if: proc { |att| att ['name'].blank?}

end
