class CreateWorkMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :work_members do |t|
      t.references :user, null: false, foreign_key: true
      t.references :overtime_work_info, null: false, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.datetime :start_substitute_holiday
      t.datetime :end_substitute_holiday

      t.timestamps
    end
  end
end
