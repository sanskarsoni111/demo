class CreateLeaveevent < ActiveRecord::Migration[6.1]
  def change
    create_table :leaveevents do |t|
      t.string :casual_leave
      t.string :maternity_leave
      t.string :paternity_leave
      t.string :sick_leave
      t.integer :no_of_days
      t.text :reason_for_leave
      t.integer :user_id
      t.string :status
      t.text :reason_for_rejection

      t.timestamps
    end
  end
end
