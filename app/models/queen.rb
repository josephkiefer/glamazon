class Queen < ActiveRecord::Base
  attr_accessible :bio, :is_allstar, :is_winner, :name, :season_id, :picture
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png", :url => "/public/data/:style/:basename.:extension", :path => ":rails_root/public/data/:style/:basename.:extension"
end