defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck creates a deck of 20 cards" do
    [h | t] = Cards.create_deck
    assert h == "Ace of Spades"
    assert length(t) == 19
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    refute deck == Cards.shuffle(deck)
    assert length(deck) == length(Cards.shuffle(deck))
  end
end
