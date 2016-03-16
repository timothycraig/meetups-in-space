class User_meetup < ActiveRecord::Base
  belongs_to :user
  belongs_to :meetup
end
