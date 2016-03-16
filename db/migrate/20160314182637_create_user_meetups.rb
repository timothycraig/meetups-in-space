class CreateUserMeetups < ActiveRecord::Migration
  def change
    create_table :user_meetups do |table|
      table.integer :user_id, null: false
      table.integer :meetup_id, null: false
      table.integer :creator_id, null: false
      table.timestamps null: false
    end
  end
end
