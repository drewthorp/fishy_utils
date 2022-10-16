# frozen_string_literal: true

require 'fishy_utils/is_any'
require 'fishy_utils/legal_options'

module FishyUtils
  module ObjectUtilities
    extend ActiveSupport::Concern
    include FishyUtils::IsAny
    include FishyUtils::LegalOptions
  end
end
