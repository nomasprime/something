# frozen_string_literal: true

class Button::Component < ApplicationViewComponent
  include ViewComponentContrib::StyleVariants

  style do
    base {
      %w[
        font-medium bg-blue-500 text-white rounded-full
      ]
    }
    variants {
      color {
        primary { %w[bg-blue-500 text-white] }
        secondary { %w[bg-purple-500 text-white] }
      }
      size {
        sm { "text-sm" }
        md { "text-base" }
        lg { "px-4 py-3 text-lg" }
      }
      disabled {
        yes { "opacity-75" }
      }
    }
    defaults { {size: :md, color: :primary} }
  end

  attr_reader :size, :color, :disabled

  def initialize(size: nil, color: nil, disabled: false)
    @size = size
    @color = color
    @disabled = disabled
  end
end
