class Poll < ActiveRecord::Base
	#has_one :selected_choice
	has_many :choices

	belongs_to :selected_choice, class_name: 'Choice', :foreign_key => :selected_choice_id

	accepts_nested_attributes_for :choices
	
end
