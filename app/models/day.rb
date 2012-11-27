class Day < ActiveRecord::Base
  attr_accessible :day_num

  has_many :morninglists
  has_many :eveninglists
end
