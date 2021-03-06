# frozen_string_literal: true

class Card
  def initialize(numbers_card)
    @numbers_card = numbers_card
  end

  attr_reader :numbers_card

  def valid_card(numbers_card)
    numbers_card = numbers_card.gsub(/[^\d]/, '').split('').map(&:to_i)
    if numbers_card.empty?
      puts 'number_card is empty'
    else
      sum_hash = 0
      sum_hash = check_hash_sum(numbers_card, sum_hash)
      puts sum_hash
      (sum_hash % 10).zero?
    end
  end

  def check_hash_sum(valid_numbers,  sum_hash = 0)
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
