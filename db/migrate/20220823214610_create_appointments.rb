class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :patient_name
      t.string :date
      t.string :time
      t.text :issue

      t.timestamps
    end
  end
end
