# frozen_string_literal: true

class MySet
  def initialize
    @values = []
  end

  def add(value)
    return if contains?(value)

    @values.push(value)
  end

  def empty?
    @values.empty?
  end

  def length
    @values.size
  end

  def contains?(value)
    @values.include?(value)
  end
end
