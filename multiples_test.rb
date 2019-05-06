require 'minitest/autorun'
require './multiples'

describe Multiples do
  before do
    @result = Multiples.iteration
  end

  describe '#multiples of' do
    it 'returns the valids multiples of three' do
      assert_equal 'Foo', @result[92]
    end

    it 'returns total of Foo' do
      assert_equal 27, @result.count('Foo')
    end

    it 'returns the valids multiples of five' do
      assert_equal 'Bar', @result[94]
    end

    it 'returns total of Bar' do
      assert_equal 14, @result.count('Bar')
    end

    it 'returns the valids multiples of inclussion three and five' do
      assert_equal 'FooBar', @result[14]
    end

    it 'returns total of FooBar' do
      assert_equal 6, @result.count('FooBar')
    end

    it 'is not multiple' do
      assert_equal 8, @result[7]
    end

  end
end
