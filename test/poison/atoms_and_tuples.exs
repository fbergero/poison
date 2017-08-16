defmodule Poison.DecoderTest do
  use ExUnit.Case, async: true
  @atom :poison
  @empty_tuple {}
  @tuple {:poison, {1, :other}}

  test "Encode atoms" do
    assert @atom ==
      @atom
      |> Poison.encode!(encode_atoms: true)
      |> Poison.decode!()
  end

  test "Encode tuples" do
    assert @empty_tuple ==
      @empty_tuple
      |> Poison.encode!(encode_tuples: true)
      |> Poison.decode!()
  end

  test "Encode tuples with atom values" do
    assert @tuple ==
      @tuple
      |> Poison.encode!(encode_tuples: true, encode_atoms: true)
      |> Poison.decode!()

  end
 end