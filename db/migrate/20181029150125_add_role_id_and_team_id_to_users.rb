class AddRoleIdAndTeamIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :role, index: true
    add_reference :users, :team, index: true
  end
end
