module ApplicationHelper

	def navbar_helper
	   if logged_in? 
         (link_to current_user.name, current_user)+' | '.html_safe+
         (link_to 'Logout', logout_path)+' | '.html_safe+
         (link_to 'Events', events_path)+' | '.html_safe+
         (link_to 'Users', users_path)+' | '.html_safe+' | '+
         (link_to 'New event', new_event_path)
       else
         (link_to 'Register', signup_path)+' | '.html_safe+
         (link_to 'Login', login_path)
       end
	end

end
