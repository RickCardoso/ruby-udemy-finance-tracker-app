# frozen_string_literal: true

class ButtonComponentPreview < ViewComponent::Preview
  def default(type: :primary)
    type = type.to_sym if type

    render(ButtonComponent.new(type: type)) { 'Button' }
  end

  def primary
    render(ButtonComponent.new(type: :primary)) { 'Submit' }
  end

  def secondary
    render(ButtonComponent.new(type: :secondary)) { 'Cancel' }
  end
end
