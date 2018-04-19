require_relative '../animal.rb'

describe Animal do

  describe "#initialize" do
    it 'should create an animal instance' do
      animal = Animal.new('Leon')
      expect(animal).to be_an(Animal)
    end
  end

  describe "#name" do
    it 'should display an instance name' do
      animal = Animal.new('Leon')
      expect(animal.name).to eq('Leon')
    end
  end

end
