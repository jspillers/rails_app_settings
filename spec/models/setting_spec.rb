require File.expand_path(File.join(File.dirname(__FILE__),'..','spec_helper'))

describe Setting do
  it "should set a string value for an arbitrary key" do
    Setting.some_key = "asdf"
    Setting.some_key.should == "asdf"
  end

  it "should set a integer value for an arbitrary key" do
    Setting.some_key = 1
    Setting.some_key.should == 1
  end

  it "should set a float value for an arbitrary key" do
    Setting.some_key = 1.5
    Setting.some_key.should == 1.5
  end

  it "should set a boolean value for an arbitrary key" do
    Setting.some_key = true
    Setting.some_key.should == true
  end

  it "should return nil for an unknown key" do
    Setting.asdf.should == nil
  end

  it "should update the value for an existing key" do
    Setting.some_key = "some value"
    Setting.some_key.should == "some value"
    Setting.some_key = "new value"
    Setting.some_key.should == "new value"
  end
end
