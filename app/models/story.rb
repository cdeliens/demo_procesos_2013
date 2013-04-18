class Story < ActiveRecord::Base
  attr_accessible :description, :title

  after_create :default_title

  private

  def default_title
    self.title =  "Default Message"
    self.save
  end
end
