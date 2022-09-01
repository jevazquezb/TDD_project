class Solver
  def factorial(n)
    return "N should be positive" if n.negative?
    return 1 if n.zero?
    n = n * factorial(n - 1)
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(n)
    if (n % 3).zero? && (n % 5).zero?
      return "fizzbuzz"
    elsif (n % 3).zero?
      return "fizz"
    elsif (n % 5).zero?
      return "buzz"
    else
      return n.to_s
    end
  end
end