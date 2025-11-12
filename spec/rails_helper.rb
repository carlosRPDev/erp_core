# frozen_string_literal: true

require_relative "../../../spec/rails_helper"

RSpec.configure do |config|
  config.include ErpCore::Engine.routes.url_helpers, type: :routing
end
