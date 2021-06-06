class KillEventAttendees < ActiveRecord::Migration[6.1]
  def change
    drop_table :event_attendees
  end
end
