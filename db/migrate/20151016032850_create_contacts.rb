class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :user, index: true
      t.string :verbal_name
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :phone
      t.string :import_source

      t.timestamps
    end
  end
end
