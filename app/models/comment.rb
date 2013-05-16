class Comment < ActiveRecord::Base
  attr_accessible :body, :queen_id
  belongs_to :queen
end
