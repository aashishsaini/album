class Photo < ActiveRecord::Base


  belongs_to :album

#paperclip
  has_attached_file :image_url,
     :styles => {
       :thumb=> "100x100#",
       :small  => "200x200>" },
	:presence => true


validates :image_url, :presence => true
end
