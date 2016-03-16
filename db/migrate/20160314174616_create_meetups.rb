class CreateMeetups < ActiveRecord::Migration
  def change
    create_table :meetups do |table|
      table.string :name, null: false
      table.string :location, null: false
      table.datetime :date, null: false
      table.text :description
      table.timestamps null: false
    end

    add_index :meetups, [:name], unique: true
  end
end
