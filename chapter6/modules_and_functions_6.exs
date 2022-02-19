defmodule Chop do
  def guess(actual, low..high) do
    potential = div(high-low, 2) + low
    guess(actual, low..high, potential)
  end

  def guess(actual, _, potential) when actual == potential do
    IO.puts "#{actual}"
  end

  def guess(actual, _..high, potential) when potential < actual do
    print(potential)
    new_low = potential + 1
    new_potential = div(high-new_low, 2) + new_low
    guess(actual, new_low..high, new_potential)
  end

  def guess(actual, low.._, potential) when potential > actual do
    print(potential)
    new_high = potential - 1
    new_potential = div(new_high-low, 2) + low
    guess(actual, low..new_high, new_potential)
  end
 
  def print(value) do
    IO.puts "Is it #{value}"
  end
end