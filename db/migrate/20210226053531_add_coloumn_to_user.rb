class AddColoumnToUser < ActiveRecord::Migration[6.1]
  def change
  	add_column :users, :admin_id, :integer
  	add_column :users, :leave_used, :integer
  end
end
