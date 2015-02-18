class School < ActiveRecord::Base
  has_many :professors
  validates :name, :presence => true, :uniqueness => true, :length => { :minimum => 2, :maximum => 100  }
end
