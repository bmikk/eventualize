class EventAttending < ApplicationRecord
  belongs_to :event_guest, class_name: "User"
  belongs_to :attended_event, class_name: "Event"
end
