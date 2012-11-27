class Eveninglist < ActiveRecord::Base
  attr_accessible :day_id, :note, :status

  belongs_to :day
end
