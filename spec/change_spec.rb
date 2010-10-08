require 'change'
#
#  Change.make(26).should == [25,1]
#  Change.make(16).should == [10,5,1]
#  Change.make(0).should == []
#  Change.make(28, [10,25,1]).should == [25,1,1,1]
#  Change.make(14, [10,7,1]).should == [7,7]
#
#
describe Change, "#make" do
  it "returns correct change for 26 cents" do
    Change.make(26).should == [25,1]
  end
  it "returns correct change for 16 cents" do
    Change.make(16).should == [10,5,1]
  end
  it "returns correct change for 0 cents" do
    Change.make(0).should == []
  end
  it "returns correct change for 28 cents with custom coins/order" do
    Change.make(28, [10,25,1]).should == [25,1,1,1]
  end
  it "returns correct change for 14 cents with a 7 cent coin" do
    Change.make(14, [10,7,1]).should == [7,7]
  end
end