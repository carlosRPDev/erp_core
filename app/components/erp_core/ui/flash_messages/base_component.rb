# frozen_string_literal: true

module ErpCore
  class Ui::FlashMessages::BaseComponent < ViewComponent::Base
    def initialize(flash:, resource: nil)
      @flash = flash
      @resource = resource
    end

    def flash_classes(type)
      case type.to_sym
      when :notice
        "bg-green-100 border border-green-400 text-green-700"
      when :alert, :error
        "bg-red-100 border border-red-400 text-red-700"
      else
        "bg-blue-100 border border-blue-400 text-blue-700"
      end
    end
  end
end
