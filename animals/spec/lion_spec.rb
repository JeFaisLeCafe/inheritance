require_relative '../lion'

describe Lion do
  describe "#talk" do
    it "should return a sentence stating the lion is roaring" do
      lion = Lion.new('Simba')
      puts lion.talk
      expect(lion.talk).to eq("Simba roars")
    end
  end
end
