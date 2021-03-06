require File.dirname(__FILE__) + "/spec_helper"

describe Fixnum do
  it "should only generate Fixnums" do
    ForAll(Fixnum) { |i| i.should be_kind_of(Fixnum) }
  end

  it "should generate sufficiently random fixnums" do
    set = Set.new
    100.times { set << Arbitrary(Fixnum) }
    set.size.should >= 95
  end
end
