require "problem1.rb"

describe "problem1" do
  {
    10 => 23
  }.each do |n, s|
    it "should return #{s} for #{n}" do
      problem1(n).should == s
    end
  end
end
