require_relative '../lib/calculator'

RSpec.describe Calculator do
  subject(:calculator) { described_class.new }

  describe '#add' do
    it 'adds two positive numbers' do
      expect(calculator.add(2, 3)).to eq(5)
    end

    it 'adds a positive and a negative number' do
      expect(calculator.add(-1, 1)).to eq(0)
    end
  end

  describe '#subtract' do
    it 'subtracts two numbers' do
      expect(calculator.subtract(5, 3)).to eq(2)
    end
  end

  describe '#multiply' do
    it 'multiplies two numbers' do
      expect(calculator.multiply(4, 3)).to eq(12)
    end
  end

  describe '#divide' do
    it 'divides two numbers' do
      expect(calculator.divide(10, 2)).to eq(5)
    end

    it 'raises an error when dividing by zero' do
      expect { calculator.divide(1, 0) }.to raise_error(ArgumentError, 'Cannot divide by zero')
    end
  end
end
