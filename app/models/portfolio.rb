class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  after_initialize :set_defaults

  def set_defaults
    self.main_image   ||= "http://placehold.it/600x450" 
    self.thumb_image  ||= "http://placehold.it/250x250"
  end
end
