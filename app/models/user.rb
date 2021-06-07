class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :host_events, foreign_key: "host_id", class_name: "Event", dependent: :destroy
  has_many :attended_events, through: :event_attendings
  has_many :event_attendings, foreign_key: "guest_id"
  
end
