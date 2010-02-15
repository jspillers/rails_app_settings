require 'spec_helper'

describe Setting do
  before(:each) do
    @valid_attributes = {
      :key => "value for key",
      :value => "value for value"
    }
  end

  it "should create a new instance given valid attributes" do
    Setting.create!(@valid_attributes)
  end
end
