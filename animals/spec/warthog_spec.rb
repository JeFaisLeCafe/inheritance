require_relative '../warthog.rb'

describe Warthog do

  describe "#talk" do
    it 'should return that Warthog is grunting' do
    warthog = Warthog.new('Pumba')
    expect(warthog.talk).to eq('Pumba grunts')
    end
  end

end
