class CompositeImage < ActiveRecord::Base
  has_attached_file :base_image
  validates_attachment_content_type :base_image, :content_type => /\Aimage/
  validates_attachment_file_name :base_image, :matches => [/png\Z/, /jpe?g\Z/]

  has_attached_file :mask_image
  validates_attachment_content_type :mask_image, :content_type => /\Aimage/
  validates_attachment_file_name :mask_image, :matches => [/png\Z/, /jpe?g\Z/]
end