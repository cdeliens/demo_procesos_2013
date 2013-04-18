require 'spec_helper'

describe Story do

  it "creates a new intance with a default title" do
    s = Story.create()
    s.title.should_not == nil
  end

end

