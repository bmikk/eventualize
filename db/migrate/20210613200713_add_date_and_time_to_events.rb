class AddDateAndTimeToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :start_date, :date
    add_column :events, :start_time, :time
  end
end
