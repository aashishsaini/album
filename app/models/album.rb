class Album < ActiveRecord::Base
validates :name, :presence => true, :uniqueness => true
validates :description, :presence => true, :length => {:minimum => 5}
 #paperclip
  has_attached_file :image,
     :styles => {
       :thumb=> "100x100#",
       :small  => "200x200>" }

has_many :photos, :dependent => :destroy
  has_many :tags
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }

end
