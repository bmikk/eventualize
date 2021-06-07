class EventAttendingsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end
  
  def create
    @event = set_event()
    @event_attending = EventAttending.new(attended_event_id: @event.id, guest_id: current_user.id)

    respond_to do |format|
      if @event_attending.save
        format.html { redirect_to @event_attending, notice: "Event was successfully created." }
        format.json { render :show, status: :created, location: @event_attending }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event_attending.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end


end


