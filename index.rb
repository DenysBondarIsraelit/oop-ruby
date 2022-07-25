# frozen_string_literal: true

require 'logger'
require_relative 'User'
require_relative 'Card'

logger = Logger.new('foo.log')
file = File.open('foo.log', File::WRONLY | File::APPEND)
logger = Logger.new(file)

print 'Hi! Enter your name? '
user_name = gets.chomp
print 'Enter your user age? '
user_age = gets.chomp

user = User.new(user_name, user_age)

if user.user_age.to_i > 13
  print 'Enter your number card? '
  numbers_card = gets.chomp

  number_card = Card.new(numbers_card)
  is_valid = number_card.valid_card(number_card.numbers_card)

  logger.info('new actions') do
    "user_name #{user.user_name},
     user_age #{user.user_age},
     number_card #{numbers_card},
     number_card_hash #{is_valid}"
  end
else
  logger.info('new actions') { "user_name #{user.user_name}, user_age #{user.user_age}" }
end

puts user.user_name
puts user.user_age

# numbers_card = gets.chomp
