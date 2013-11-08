class AddOwnerToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :owner, :integer
  end
end
