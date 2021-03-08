class AddColoumnToLeaveinfo < ActiveRecord::Migration[6.1]
  def change
  	add_column :leaveinfos, :admin_id, :integer
  end
end
