class AddStartDateToUrls < ActiveRecord::Migration[7.1]
  def change
    add_column :urls, :start_date, :datetime, null: false, default: Time.zone.now
  end
end
