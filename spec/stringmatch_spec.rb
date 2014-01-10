require 'spec_helper'
require 'stringmatch'

describe Stringmatch do
  describe "new" do
    it "should instantiate" do
      lambda {
        Stringmatch.new
      }.should_not raise_exception
    end
  end
end
