# frozen_string_literal: true

module FishyUtils
  module Errors
    # === Utilities \Errors \UnknowOptions
    #
    # Errors thrown when an unknown options is passed to a +ValidationDescriptor+.
    class UnknowOptions < StandardError
      attr_reader :option_names

      def initialize(option_names = [])
        @option_names = option_names
        msg = "unknown options '#{option_names}'."
        super(msg)
      end
    end
  end

  # Extends all Objects with an instance and class method for checking the validity of
  # an +options+ +Hash+.
  module LegalOptions
    extend ActiveSupport::Concern

    class_methods do
      def legal_options?(legal_keys, options)
        illegal = options.keys.reject { |opt| opt.in?(legal_keys) }
        return true if illegal.empty?

        raise FishyUtils::Errors::UnknowOptions, illegal.map(&:to_s).join(', ')
      end
    end

    def legal_options?(legal_keys, options)
      self.class.legal_options?(legal_keys, options)
    end
  end
end
