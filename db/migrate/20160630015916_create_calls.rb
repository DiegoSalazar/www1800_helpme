class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.string :called
      t.string :from
      t.string :direction
      t.string :status
      t.text :recording_url
      t.integer :recording_duration
      t.string :call_sid
      t.string :account_sid
      t.string :from_zip
      t.string :from_city
      t.string :from_state
      t.string :from_country
      t.text :meta

      t.timestamps
    end
  end
end
