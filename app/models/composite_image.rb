# == Schema Information
#
# Table name: composite_images
#
#  id                      :integer          not null, primary key
#  name                    :string           not null
#  base_image_file_name    :string           not null
#  base_image_content_type :string           not null
#  base_image_file_size    :integer          not null
#  base_image_updated_at   :datetime         not null
#  mask_image_file_name    :string           not null
#  mask_image_content_type :string           not null
#  mask_image_file_size    :integer          not null
#  mask_image_updated_at   :datetime         not null
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
# Indexes
#
#  index_composite_images_on_name  (name) UNIQUE
#

class CompositeImage < ActiveRecord::Base
  has_attached_file :base_image
  validates_attachment_content_type :base_image, :content_type => /\Aimage/
  validates_attachment_file_name :base_image, :matches => [/png\Z/, /jpe?g\Z/]

  has_attached_file :mask_image
  validates_attachment_content_type :mask_image, :content_type => /\Aimage/
  validates_attachment_file_name :mask_image, :matches => [/png\Z/, /jpe?g\Z/]
end
