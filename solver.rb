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
end
