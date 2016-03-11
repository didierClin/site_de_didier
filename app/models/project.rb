class Project < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300#", :thumb => "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  before_save :set_slug

  private
  def set_slug
    self.slug = self.title.parameterize
  end

end
