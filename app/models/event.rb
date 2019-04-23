class Event < ApplicationRecord
	belongs_to :creator, class_name: "User"
	validates_presence_of :title, :content, :date
	has_many :attendances
	has_many :attendees, through: :attendances, source: 'user'
	scope :past, -> {  where("date < ?", DateTime.now) }
	scope :upcoming, -> {  where("date > ?", DateTime.now) }
end
