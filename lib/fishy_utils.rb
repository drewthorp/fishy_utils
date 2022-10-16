# frozen_string_literal: true

require_relative 'fishy_utils/version'
require 'active_support'
require 'fishy_utils/object_utilities'

::Object.include(FishyUtils::ObjectUtilities)
