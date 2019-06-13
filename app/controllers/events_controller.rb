class EventsController < ApplicationController
	def index
		@past_events = Event.past
		@upcoming_events = Event.upcoming
	end
		
	def new
		@event = Event.new
	end
	def show
		@event = Event.find(params[:id])
	end	
	
	def create
		@event = current_user.events.build(event_params)
		if @event.save
			redirect_to @event
        else
        	render "new"
      end
	end

	def join
 		@event = Event.find(params[:id])
 		unless @event.attendees.include?(current_user)
 			@event.attendees << current_user
 		end
 		redirect_to @event
 	end

 	def leave
 		@event = Event.find(params[:id])
 		if @event.attendees.include?(current_user)
 			@event.attendees.delete(current_user)
 		end
 		redirect_to @event
 	end

	private
		def event_params
			params.require(:event).permit(:title, :content, :date)
		end	
end
