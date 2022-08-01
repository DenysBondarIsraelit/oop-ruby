# frozen_string_literal: true

class Card

  attr_reader :numbers_card

  def initialize(numbers_card)
    @numbers_card = numbers_card
  end

  def valid?
    numbers_card = self.numbers_card.gsub(/[^\d]/, '').split('').map(&:to_i)
    if !numbers_card.empty?
      sum_hash = 0
      sum_hash = check_hash_sum(numbers_card, sum_hash)
      (sum_hash % 10).zero?
    end
  end

  private def check_hash_sum(valid_numbers,  sum_hash = 0)
    valid_numbers.each_with_index do |item, index|
      if item.even?
        val = valid_numbers[index]
      else
        val = valid_numbers[index] * 2
        val -= 9 if val > 9
      end
      sum_hash += val
    end
    sum_hash
  end
end

