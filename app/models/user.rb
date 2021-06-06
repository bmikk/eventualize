class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :host_events, foreign_key: "host_id", class_name: "Event"
  has_many :guest_events, class_name: "Event"
  
end
