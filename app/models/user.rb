class User < ApplicationRecord
	has_many :events, foreign_key: "creator_id", class_name: "Event"
	validates_presence_of :name
	has_many :attendances
	has_many :events_as_attendee, through: :attendances, source: 'event'

def past_events
	events_as_attendee.past
end	
def upcoming_events
	events_as_attendee.upcoming
end	

end
