class Professor < ActiveRecord::Base
  belongs_to :school
  validates :name, :presence => true, :length => { :minimum => 1  }

end
