# frozen_string_literal: true

class Tweet < ApplicationRecord
  include Likeable

  belongs_to :user
end
