class CreateLeaveinfos < ActiveRecord::Migration[6.1]
  def change
    create_table :leaveinfos do |t|
      t.string :types
      t.integer :no_of_days
      
      t.timestamps
    end
  end
end
