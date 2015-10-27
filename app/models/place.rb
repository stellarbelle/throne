class Place < ActiveRecord::Base
  belongs_to :user
  belongs_to :type
  belongs_to :category
end
