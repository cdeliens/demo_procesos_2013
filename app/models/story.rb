class Story < ActiveRecord::Base
  attr_accessible :description, :title

  after_create :default_title

  private

  def default_title
    self.update_attributes(:title => "Default Message")
  end
  
  def default_description
    self.update_attributes(:description => "Default Description")
  end
end
