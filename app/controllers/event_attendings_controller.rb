class EventAttendingsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @event_attending = EventAttending.new
  end
  
  def create
    @event = set_event()
    if @event.host.id == current_user.id
      flash[:alert] = "You're the host! You don't need to register for your own event."
      redirect_to @event
    elsif @event.guests.include?(current_user)
      flash[:alert] = "You're already registered for this event."
      redirect_to @event
    else

      attendance = @event.event_attendings.build(event_attending_params)

      respond_to do |format|
        if attendance.save
          format.html { redirect_to @event, notice: "You have successfully registered for the event." }
          format.json { render :show, status: :created, location: @event_attending }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @event_attending.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  def update
  end

  private

  def set_event
    Event.find(params[:attended_event_id])
  end

  def event_attending_params
    #params.fetch(:event, {})
    params.permit(:attended_event_id, :guest_id)
  end


end




