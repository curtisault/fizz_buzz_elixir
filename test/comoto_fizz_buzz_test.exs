defmodule ComotoFizzBuzzTest do
  use ExUnit.Case
  doctest ComotoFizzBuzz

  import ExUnit.CaptureIO

  test "divisible by 3" do
    assert capture_io(fn -> ComotoFizzBuzz.print_fizzbuzz(1..3) end) == "1\n2\nFizz\n"
  end

  test "divisible by 5" do
    assert capture_io(fn -> ComotoFizzBuzz.print_fizzbuzz(1..5) end) == "1\n2\nFizz\n4\nBuzz\n"
  end

  test "divisible by 7" do
    assert capture_io(fn -> ComotoFizzBuzz.print_fizzbuzz(1..7) end) ==
             "1\n2\nFizz\n4\nBuzz\nFizz\nPop\n"
  end

  test "divisible by both 3 & 5" do
    assert capture_io(fn ->
             ComotoFizzBuzz.print_fizzbuzz(1..15)
           end) ==
             """
             1
             2
             Fizz
             4
             Buzz
             Fizz
             Pop
             8
             Fizz
             Buzz
             11
             Fizz
             13
             Pop
             FizzBuzz
             """
  end

  test "steakholder changed requirements" do
    assert capture_io(fn ->
             ComotoFizzBuzz.print_fizzbuzz(7..120)
           end) ==
             "Pop\n8\nFizz\nBuzz\n11\nFizz\n13\nPop\nFizzBuzz\n16\n17\nFizz\n19\nBuzz\nFizzPop\n22\n23\nFizz\nBuzz\n26\nFizz\nPop\n29\nFizzBuzz\n31\n32\nFizz\n34\nBuzzPop\nFizz\n37\n38\nFizz\nBuzz\n41\nFizzPop\n43\n44\nFizzBuzz\n46\n47\nFizz\nPop\nBuzz\nFizz\n52\n53\nFizz\nBuzz\nPop\nFizz\n58\n59\nFizzBuzz\n61\n62\nFizzPop\n64\nBuzz\nFizz\n67\n68\nFizz\nBuzzPop\n71\nFizz\n73\n74\nFizzBuzz\n76\nPop\nFizz\n79\nBuzz\nFizz\n82\n83\nFizzPop\nBuzz\n86\nFizz\n88\n89\nFizzBuzz\nPop\n92\nFizz\n94\nBuzz\nFizz\n97\nPop\nFizz\nBuzz\n101\nFizz\n103\n104\nPizzaParty\n106\n107\nFizz\n109\nBuzz\nFizz\nPop\n113\nFizz\nBuzz\n116\nFizz\n118\nPop\nFizzBuzz\n"
  end
end
