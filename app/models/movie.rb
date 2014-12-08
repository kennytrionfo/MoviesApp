class Movie < ActiveRecord::Base
	
	validates :title, presence: true
	validates :date, presence: true
	validates :place, presence: true
end
