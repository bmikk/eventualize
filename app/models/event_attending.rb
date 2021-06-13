class EventAttending < ApplicationRecord
  belongs_to :attended_event, class_name: "Event", dependent: :destroy
  belongs_to :guest, class_name: "User", dependent: :destroy
end
