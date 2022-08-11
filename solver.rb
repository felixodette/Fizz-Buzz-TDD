class Solver
  def factorial(num)
    return 'Exception: Negative numbers don\'t have factorials.' if num.negative?

    case num
    when 0
      1
    else
      num * factorial(num - 1)
    end
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 5).zero?
      'buzz'
    elsif (num % 3).zero?
      'fizz'
    else
      num
    end
  end
end
