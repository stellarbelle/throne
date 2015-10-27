class PlaceType < ActiveRecord::Base
  belongs_to :type
  belongs_to :place
end
