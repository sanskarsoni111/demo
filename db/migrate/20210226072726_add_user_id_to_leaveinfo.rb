class AddUserIdToLeaveinfo < ActiveRecord::Migration[6.1]
  def change
  	add_column :leaveinfos, :user_id, :integer
  end
end
