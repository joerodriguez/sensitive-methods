require "rubygems"
require "test/unit"
require "lib/sensitive_methods.rb"

class Person
  include SensitiveMethods
  attr_accessor :ssn, :name
  sensitive :ssn
end

class Dog
  attr_accessor :name, :ssn
end

class SensitiveMethodsTest < Test::Unit::TestCase
  def test_errors_on_person
    person = Person.new
    person.ssn = '123-345-4324'
    person.name = 'Mr. Cool'

    assert_equal person.name, 'Mr. Cool'
    assert_raise(SensitiveDataError){ person.ssn }
    assert_equal person.sensitive_ssn, '123-345-4324'
  end

  def test_no_errors_on_dog
    dog = Dog.new
    dog.ssn = '123'
    assert_nothing_raised { dog.ssn }
  end
end
