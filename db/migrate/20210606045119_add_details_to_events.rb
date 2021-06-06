class AddDetailsToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :start_date_and_time, :string
    add_column :events, :location, :string
  end
end
