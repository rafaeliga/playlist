class Song < ActiveRecord::Base
  belongs_to :artist
  
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>", :mini => "50x50>" }
  
  scope :recent, lambda{|number_of| order("updated_at DESC").limit(number_of) }
end
