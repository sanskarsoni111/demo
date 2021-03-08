class AddColoumnToLeaveevent < ActiveRecord::Migration[6.1]
  def change
  	add_column :leaveevents, :total_leaves, :integer
  	add_column :leaveevents, :leave_taken, :integer
  end
end
