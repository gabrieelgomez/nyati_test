class Integer
  def multiple_of?(n)
    modulo(n).zero?
  end
end

class Multiples
  def self.iteration
    Array(1..100).map do |number|
      process(number)
    end
  end

  def self.process(number)
    number.multiple_of?(15) && (return 'FooBar')
    number.multiple_of?(5) && (return 'Bar')
    number.multiple_of?(3) && (return 'Foo')
    number
  end
end

puts "#{Multiples.iteration}"
