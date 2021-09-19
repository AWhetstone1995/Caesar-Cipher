require './script.rb'

describe "#caesar_cipher" do
  it "shifts characters by the shift value and returns a string" do
    expect(caesar_cipher("Andy is a cool dude", 5)).to eql ("Fsid nx f httq izij")
  end

  it "wraps from z to a" do
    expect(caesar_cipher("zzy", 3)).to eql("ccb")
  end

  it "maintains capitilazation" do
    expect(caesar_cipher("AaAbBb", 2)).to eql("CcCdDd")
  end
end
