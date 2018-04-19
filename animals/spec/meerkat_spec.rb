require_relative '../meerkat.rb'

describe Meerkat do

  describe "#talk" do
    it 'should return that Meerkat is barking' do
    meerkat = Meerkat.new('Timon')
    expect(meerkat.talk).to eq('Timon barks')
    end
  end

end
