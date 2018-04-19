require_relative '../meerkat'

describe Meerkat do
  describe "#talk" do
    it "should return a sentence stating the meerkat is barking" do
      meerkat = Meerkat.new('Timon')
      puts meerkat.talk
      expect(meerkat.talk).to eq("Timon barks")
    end
  end
end
