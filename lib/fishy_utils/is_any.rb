# frozen_string_literal: true

module FishyUtils
  # Extend all Objects with an +is_any?+ predicate.  This is the equivalent of
  # +is_a?+, but accepts a list of potential classes.
  module IsAny
    extend ActiveSupport::Concern

    # rubocop:disable Naming::PredicateName
    def is_any?(*klasses)
      klasses.flatten.any? do |klass|
        is_a?(klass)
      end
    end
    # rubocop:enable Naming::PredicateName
  end
end
