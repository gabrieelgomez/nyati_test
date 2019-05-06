class Multiples

  def iteration
    Array(1..100).collect do |number|
      multiple_of(number)
    end
  end

  private

  def multiple_of(number)
    number.modulo(15).zero? && (return 'FooBar')
    number.modulo(3).zero? && (return 'Foo')
    number.modulo(5).zero? && (return 'Bar')
    number
  end

end
