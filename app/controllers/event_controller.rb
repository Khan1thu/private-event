class EventController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @event = Event.all
    end

    def index
        @event = Event.all
    end

    def new
        @event = Event.new
    end

    def create
        @event = current_user.events.build(event_params)
    
        if @event.save
          flash[:notice] = "Event '#{@event.name}' created!"
          redirect_to @event
        else
          flash[:alert] = "Error in organizing event! Check the date and if there are any empty fields."
          render 'new'
        end
    end    

    def event_params
        params:require(:post).permit(:event_name, :event_place, :event_date, :user_id)
    end
end
