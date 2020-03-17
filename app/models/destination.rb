class Destination < ActiveRecord::Base
  has_many :destinations
  belongs_to :user
end
