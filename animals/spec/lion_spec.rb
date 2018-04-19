require_relative '../lion.rb'

describe Lion do

  describe "#talk" do
    it 'should return that Lion is roaring' do
    lion = Lion.new('Simba')
    expect(lion.talk).to eq('Simba roars')
    end
  end

end
