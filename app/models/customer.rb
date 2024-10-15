class Customer < ApplicationRecord
  has_one_attached :image
  validates :full_name, :phone_number, presence: true

  # Define searchable associations for Ransack
  def self.ransackable_associations(auth_object = nil)
    %w[image_attachment image_blob]
  end

  # Define searchable attributes if needed
  def self.ransackable_attributes(auth_object = nil)
    %w[full_name phone_number email_address notes created_at updated_at]
  end
end
