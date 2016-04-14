class Task < ActiveRecord::Base
	validates :title, presence: true
	belongs_to :list
	scope :incomplete, -> {where("completed = 'f'")}

	#def self.incomplete
	#	Task.where("completed = 'f'")
	#end
end
