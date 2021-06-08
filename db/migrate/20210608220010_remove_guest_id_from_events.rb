class RemoveGuestIdFromEvents < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :guest_id
  end
end
