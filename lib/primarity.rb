# frozen_string_literal: true

require_relative "primarity/version"

class InvalidNumberError < StandardError ; end
class UndefinedPrimarityTestMethod < StandardError; end

class Integer
  def prime?(method='ortho')
    if self <= 1
      raise InvalidNumberError.new("#{self} must be 2 or more")
    elsif ['ortho', 'fermat'].include?(method)
      return self.public_send(method, self)
    else
      raise UndefinedPrimarityTestMethod.new("#{method} is not defined method")
    end
  end

  def ortho(n)
    (2...Math::sqrt(n).to_i+1).each do |value|
      if n % value == 0 ; return false end
    end
    return true
  end

  def fermat(n)
    if n == 2 ; return true end
    if n == 3 ; return true end
    (2...n).to_a.sample(n).each do |a|
      if n.gcd(a) != 1 or a.pow(n - 1, n).to_i % n != 1 ; return false end
    end
    return true
  end
end


module Primarity
  class Error < StandardError; end
  # Your code goes here...

  module_function
  def main
    i = ARGV[0]
    if i.to_i.prime?
      puts "#{i} is prime"
    else
      puts "#{i} is not prime"
    end
  end
end
