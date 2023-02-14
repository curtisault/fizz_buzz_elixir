defmodule ComotoFizzBuzz do
  @moduledoc """
  This module prints FizzBuzz

  Steakholder 
  """

  @doc """
  Requirements:
    When a number is divisible by 3 print Fizz.
    When a number is divisible by 5 print Buzz.
    When a number is divisible by both 3 & 5 print FizzBuzz.
    When a number is divisible by 7 print Pop.
    When a number is divisible by 3,5, & 7 print PizzaParty.
  """
  def print_fizzbuzz(range) do
    list = Enum.to_list(range)

    Enum.each(list, fn num ->
      cond do
        divisible_by_3_5_7?(num) ->
          IO.puts("PizzaParty")

        divisible_by_3_5?(num) ->
          IO.puts("FizzBuzz")

        divisible_by_3_7?(num) ->
          IO.puts("FizzPop")

        divisible_by_5_7?(num) ->
          IO.puts("BuzzPop")

        divisible_by_3?(num) ->
          IO.puts("Fizz")

        divisible_by_5?(num) ->
          IO.puts("Buzz")

        divisible_by_7?(num) ->
          IO.puts("Pop")

        true ->
          # print the number if none are true
          IO.puts(num)
      end
    end)
  end

  defp divisible_by_3?(num), do: rem(num, 3) == 0
  defp divisible_by_5?(num), do: rem(num, 5) == 0
  defp divisible_by_7?(num), do: rem(num, 7) == 0
  defp divisible_by_3_5?(num), do: rem(num, 3) == 0 && rem(num, 5) == 0
  defp divisible_by_3_7?(num), do: rem(num, 3) == 0 && rem(num, 7) == 0
  defp divisible_by_5_7?(num), do: rem(num, 5) == 0 && rem(num, 7) == 0
  defp divisible_by_3_5_7?(num), do: rem(num, 3) == 0 && rem(num, 5) == 0 && rem(num, 7) == 0
end
