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

    it 'Should throw and exception when N is negative' do
      expect(@solver.factorial(-2)).to match('Exception: Negative numbers don\'t have factorials.')
    end
  end

  context '#Fizz Buzz' do
    it 'Should return "fizzbuzz" when N is divisible by 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'Should return "buzz" when N is divisible by 5' do
      expect(@solver.fizzbuzz(5)).to eq('buzz')
    end

    it 'Should return "fizz" when N is divisible by 3' do
      expect(@solver.fizzbuzz(3)).to eq('fizz')
    end
  end

  context '#reverse method' do
    it 'Should take one argument string word and returns word in reverse' do
      reversed_word = @solver.reverse('hello')
      expect(reversed_word).to match('olleh')
    end

    it 'Should return an empty string when word is empty' do
      reversed_word = @solver.reverse('')
      expect(reversed_word).to match('')
    end
  end
end
