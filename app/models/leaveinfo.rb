class Leaveinfo < ApplicationRecord
	has_many :leaveevents
	validates :no_of_days , :presence => true
end
