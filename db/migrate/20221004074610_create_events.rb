class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_place
      t.integer :event_date

      t.timestamps
    end
  end
end
