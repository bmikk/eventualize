class Event < ApplicationRecord
  has_many :event_attendings, foreign_key: :attended_event_id
  has_many :guests, through: :event_attendings, source: :event_guest
  belongs_to :host, class_name: "User"
end
