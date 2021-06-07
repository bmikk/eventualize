class AddKeysToEventAttending < ActiveRecord::Migration[6.1]
  def change
    add_column :event_attendings, :attended_event_id, :integer
    add_column :event_attendings, :guest_id, :integer
  end
end
