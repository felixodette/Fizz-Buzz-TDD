require 'rspec'
require_relative '../solver'

describe 'Solver' do
  before :each do
    @solver = Solver.new
  end

  after do
    # Do nothing
  end

  context '#Factorial method' do
    it 'Should take one argument N and return the factorial of that number' do
      expect(@solver.factorial(0)).to eql(1)
    end

    it 'Should return 720 when N is 6' do
      expect(@solver.factorial(6)).to eql(720)
    end
  end
end
