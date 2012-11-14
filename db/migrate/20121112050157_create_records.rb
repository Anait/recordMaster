class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :doctor
      t.string :specialty
      t.string :reason_for_visit

      t.timestamps
    end
  end
end
