class Fight < ActiveRecord::Base
	belongs_to :user
	has_many :scores
end
