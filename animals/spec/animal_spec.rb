require_relative '../animal'

describe Animal do
  describe "#initialize" do
    it "should create a animal instance" do
      animal = Animal.new("Babe")
      expect(animal).to be_an(Animal)
    end
  end

  describe "#name" do
    it "should display animal's name when we call name method on it" do
      animal = Animal.new("Babe")
      expect(animal.name).to eq('Babe')
    end
  end
end
