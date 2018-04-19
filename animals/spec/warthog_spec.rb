require_relative '../warthog'

describe Warthog do
  describe "#talk" do
    it "should return a sentence stating the warthog is grunting" do
      warthog = Warthog.new('Pumbaa')
      puts warthog.talk
      expect(warthog.talk).to eq("Pumbaa grunts")
    end
  end
end
