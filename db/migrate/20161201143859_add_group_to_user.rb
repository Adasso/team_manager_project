class AddGroupToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :group, foreign_key: true
    add_foreign_key :users, :groups
  end
end
