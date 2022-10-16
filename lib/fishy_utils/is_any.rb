module FishyUtils
  module IsAny
    extend ActiveSupport::Concern

    def is_any?( *klasses )              # Using the splat and flatten allows this to accept
      klasses.flatten.any? do |klass|    # both comma separated params as well as an Array.
        is_a?( klass )
      end
    end
  end
end
