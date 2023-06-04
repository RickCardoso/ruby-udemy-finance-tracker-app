# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  attr_accessor :type

  PRIMARY_CLASSES = %w[
    disabled:bg-gray-300
    focus:bg-purple-600
    hover:bg-purple-600
    bg-purple-500
    border-purple-500
    text-white
  ].freeze
  SECONDARY_CLASSES = %w[
    disabled:bg-gray-300
    focus:bg-gray-100
    hover:bg-gray-100
    bg-white
    border-purple-500
    text-purple-500
  ].freeze
  BASE_CLASSES = %w[
    cursor-pointer
    rounded-md
    transition
    duration-200
    text-center
    px-4
    border
    h-10
    whitespace-nowrap
    font-bold
    inline-block
  ].freeze

  BUTTON_TYPE_MAPPINGS = {
    primary: PRIMARY_CLASSES,
    secondary: SECONDARY_CLASSES
  }.freeze

  BUTTON_AS_MAPPING = {
    button: "button",
    link: "a"
  }

  def initialize(type: :primary, as: :button)
    @type = type
    @tag = BUTTON_AS_MAPPING[as]
  end

  def classes
    (BUTTON_TYPE_MAPPINGS[@type] + BASE_CLASSES).join(' ')
  end

end
