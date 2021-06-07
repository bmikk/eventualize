class CreateEventAttendings < ActiveRecord::Migration[6.1]
  def change
    create_table :event_attendings, :id => false do |t|

      t.timestamps
    end
  end
end
