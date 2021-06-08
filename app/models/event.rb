class Event < ApplicationRecord
  belongs_to :host, class_name: "User"
  has_many :event_attendings, foreign_key: "attended_event_id"
  has_many :guests, through: :event_attendings
end
