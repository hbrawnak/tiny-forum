class AddUserIdToDiscussions < ActiveRecord::Migration[5.2]
  def change
    add_column :discussions, :user_id, :integer
    add_index :discussions, :user_id
  end
end
