class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.references :user, index: true
      t.string :profile_pic
      t.text :hobbies

      t.timestamps
    end
  end
end
