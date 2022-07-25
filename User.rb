# frozen_string_literal: true

class User
  attr_reader :user_name, :user_ages, :user_age

  def initialize(user_name, user_age)
    @user_name = user_name
    @user_age = user_age
  end
end
